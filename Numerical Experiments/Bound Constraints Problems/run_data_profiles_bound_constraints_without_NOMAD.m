%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run this file to obtain Data Profiles WITHOUT NOMAD for Bound Constraints Problems on the Moré-Wild collection
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
format long

% The beginning of the path must be edited
addpath(genpath("...\Numerical Experiments\Methods"));

% Number of variables for the 53 problems
N = [9;9;7;7;7;7;2;2;3;3;4;4;2;2;3;3;4;3;6;6;9;9;12;12;3;2;4;4;6;
    7;8;9;10;11;10;5;11;11;8;10;11;12;5;6;8;5;5;8;10;12;12;8;8]; 

% Inputs to obtain the data profiles
N = N + ones(height(N), 1);
Nmax = max(N);
H = zeros(100*Nmax, height(N), 3);

for p = 1:height(N)

    fprintf("\n");
    fprintf("problem = %d\n\n", p);

    % Inputs to run the methods
    [nprob, n, m, factor, nfmax] = problem_L2 (p);
    x0 = dfoxs(n, nprob, factor);
    Ffun = @(x) norm(dfovec(m, n, x, nprob), 2)^2;
    
    lb = 0.1*ones(n,1); 
    ub = 20*ones(n,1); 
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    [~, ~, ~, ~, H1] = TRFD_S (x0, Ffun, nfmax, lb, ub);
    [~, ~, ~, H2] = run_bobyqa (x0, Ffun, nfmax, lb, ub); 
    [~, ~, ~, ~, H3] = TRFD (x0, Ffun, nfmax, [], [], 0.1, 20, 8);

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    H(:, p, 1) = [H1; H1(end)*ones(100*Nmax-nfmax,1)];
    H(:, p, 2) = [H2; H2(end)*ones(100*Nmax-nfmax,1)];
    H(:, p, 3) = [H3; H3(end)*ones(100*Nmax-nfmax,1)];
end

data_profiles_bound_constraints_without_NOMAD (H, N, 10^(-1));
data_profiles_bound_constraints_without_NOMAD (H, N, 10^(-3));
data_profiles_bound_constraints_without_NOMAD (H, N, 10^(-5));
data_profiles_bound_constraints_without_NOMAD (H, N, 10^(-7));