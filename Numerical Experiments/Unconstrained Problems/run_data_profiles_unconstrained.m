%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run this file to obtain Data Profiles for Unconstrained Problems on the OPM collection
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
format long

% The beginning of the path must be edited
addpath(genpath("...\Numerical Experiments\Methods"));          
addpath(genpath("...\Numerical Experiments\Unconstrained Problems\OPM 134 problems"));

% Number of variables for the 134 problems
N = [3;10;10;10;10;10;3;10;2;6;6;2;3;3;30;2;10;2;4;10;10;57;10;2;16;16;2;10;10;10;
  30;30;40;51;12;12;12;12;12;12;12;12;12;12;12;12;10;10;10;10;10;110;110;110;10;
  3;2;10;16;10;10;2;3;2;6;8;10;10;2;2;2;2;2;3;4;2;99;2;10;10;2;4;16;10;2;3;12;16;
  16;30;21;30;16;10;100;13;5;11;10;10;10;2;4;2;10;3;2;2;3;10;30;30;30;10;99;2;10;
  100;16;16;16;16;10;10;7;10;8;12;16;16;12;3;2;3]; 

% Inputs to obtain the data profiles
N = N + ones(height(N), 1);
Nmax = max(N);
H = zeros(100*Nmax, height(N), 4);

for p = 1:height(N)

    fprintf("\n");
    fprintf("problem = %d\n\n", p);

    % Inputs to run the methods
    n = N(p) - 1;
    x0 = opm_oracle_x (p, n, 0);
    Ffun = @(x) opm_oracle (x, n, p);
    nfmax = 100*(n+1);
    
    lb = []; 
    ub = []; 
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    [~, ~, ~, ~, H1] = TRFD_S (x0, Ffun, nfmax, lb, ub);
    [~, ~, ~, H2] = run_newuoa (x0, Ffun, nfmax);
    [~, ~, ~, ~, H3] = dfqrm (x0, Ffun, nfmax);
    [~, ~, ~, ~, H4] = TRFD (x0, Ffun, nfmax, [], [], lb, ub, 7);

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    H(:, p, 1) = [H1; H1(end)*ones(100*Nmax-nfmax,1)];
    H(:, p, 2) = [H2; H2(end)*ones(100*Nmax-nfmax,1)];
    H(:, p, 3) = [H3; H3(end)*ones(100*Nmax-nfmax,1)];
    H(:, p, 4) = [H4; H4(end)*ones(100*Nmax-nfmax,1)];
end

data_profiles_unconstrained (H, N, 10^(-1));
data_profiles_unconstrained (H, N, 10^(-3));
data_profiles_unconstrained (H, N, 10^(-5));
data_profiles_unconstrained (H, N, 10^(-7));