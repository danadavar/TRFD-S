function [x_min, f_min, nf, stop, H] = TRFD_S (x0, Ffun, nfmax, lb, ub)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Purpose:
%
% TRFD-S attempts to solve smooth problems of the form
%
% min f(x), subject to x in Omega,
%
% where F: R^(n) -> R and where Omega can be the unconstrained set or a box
%
% by applying the method proposed in the paper
%
% D. Davar, G. N. Grapiglia: A Finite-Difference Trust-Region Method
% for Convexly Constrained Smooth Optimization, arXiv preprint
% https://arxiv.org/abs/2510.17366, 2025.
%
% INPUT:
%  
%   x0 [n x 1]: initial point
%   Ffun: function provided by the user that computes f
%   nfmax [1 x 1]: maximum number of function evaluations allowed
%   lb [n x 1]: lower bound on x ([] if no lower bound)
%   ub [n x 1]: upper bound on x ([] if no upper bound)
%
% OUTPUT:
%
%   x_min [n x 1]: vector yielding the lowest function value found by TRFD-S
%   f_min [1 x 1]: lowest function value found by TRFD-S
%   nf [1 x 1]: number of function evaluations used 
%   stop [1 x 1]: an integer identifying the reason TRFD-S stopped:
%           
%        stop = 1: number of function evaluations >= nf_max
%        stop = 2: trust-region radius less than Delta_tol 
%        stop = -1: error in the execution of the subproblem
%        
%   H [nfmax x 1]: a vector such that H(i) is the smallest value of
%                   f(x) obtained by TRFD-S after i function evaluations
%
% Functions called: check_inputs_s, Ffun, grad_approx, inner_solver_box, TRSgep                   
%
% Authors information:
%
% Dânâ Davar, Geovani Nunes Grapiglia
% ICTEAM Institute, UCLouvain, Belgium
% dana.davar@uclouvain.be, geovani.grapiglia@uclouvain.be
%
% October 2025
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%% INITIAL CHECK %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Check the user-defined inputs

[x, Ffun, n, lb, ub, check] = check_inputs_s (x0, Ffun, nfmax, lb, ub);

if check == 0
    [x_min, f_min, nf, stop, H] = deal([]);
    return
end

%%%%%%%%%%%%%%%%%%%%%%%%  ALGORITHMIC PARAMETERS  %%%%%%%%%%%%%%%%%%%%%%%%%

ep = 1e-5;                         % target accuracy for the stationarity measure
sigma = ep/(sqrt(n)*sqrt(eps));    % approximation of the Lipschitz constant
tau = ep/(sigma*sqrt(n));          % finite-difference stepsize
alpha = 0.01;                      % minimum ratio to label the iteration as successful
Delta = max([1 tau*sqrt(n)]);      % initial trust-region radius
Delta_max = max([1000 Delta]);     % upper-bound on the trust-region radius
Delta_tol = 1e-13;                 % tolerance on the trust-region radius
warning('off', 'MATLAB:pcg:tooSmallTolerance'); % disable solver warning for unconstrained problems

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  STEP 0  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

f = Ffun(x);                       % f(x0)
nf = 1;                            % number of function evaluations
H0 = zeros(nfmax, 1);              % history of function evaluations
H0(1) = f;

x_min = x;                         % vector yielding the lowest function value found so far
f_min = f;                         % lowest function value found so far

B = eye(n);                        % symmetric matrix B, which refers to H_{k} in the paper
k = 0;                             % iteration index
stop = 0;

flag_s = 0;                        % flag to compute s_{k} = x_{k} - x_{k-1}
flag_y = 0;                        % flag to compute y_{k} = g_{k} - g_{k-1}
flag_first_success = 0;            % flag to start the BFGS update

Step = 1;

while nf < nfmax && Delta > Delta_tol

    switch Step

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  STEP 1  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        case 1

            [g, H1, x_min, f_min] = grad_approx (x, f, tau, n, Ffun, lb, ub, x_min, f_min); % compute finite-difference approximation of the gradient
            H0(nf+1: nf+n) = H1;                                                            % update the History of function values
            nf = nf + n;                                                                    % increment nf with the n evaluations used to compute g

            Step = 2;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  STEP 2  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        case 2

            if flag_s == 1
                s = x - x_save;                                             % compute s_{k} = x_{k} - x_{k-1}
            end

            if flag_y == 1 && flag_first_success > 0
                y = g - g_save;                                             % compute y_{k} = g_{k} - g_{k-1}
                a = s'*y;                                                   % compute the scalar product s_{k}*y_{k}
             
                if abs(a) > 0
                    z = B*s;
                    S1 = (y*y')/a;
                    S2 = (z*z')/(s'*B*s);
                    B = B + S1 - S2;                                        % safeguarded BFGS update of the matrix B  
                end
            end
            
            try
                if isequal(lb, -Inf*ones(n,1)) && isequal(ub, Inf*ones(n,1))
                    [d, ~, ~, ~] = TRSgep (B, g, Delta);                    % unconstrained case: use the inner-solver from the Manopt toolbox to solve the TR subproblem
                else
                    d = inner_solver_box (x, n, lb, ub, Delta, g, B);       % box-constrained case: use the FISTA inner-solver to solve the TR subproblem
                end
            
                Step = 3;
            catch
                stop = -1;
                break
            end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  STEP 3  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        case 3

            x1 = x + d;                                                     % compute the trial point
            f1 = Ffun(x1);                                                  % compute the function at the trial point
            H0(nf + 1) = f1;                                                % update the History of function values
            nf = nf + 1;                                                    % increment nf by 1

            %fprintf("iteration = %8d; nf = %8d; f1 = %8e; Delta = %8e \n", k, nf, f1, Delta);

            if f1 < f_min                                                   % check if the trial point is lower than the lowest function value found until now. If yes, update x_min and f_min 
                x_min = x1;
                f_min = f1;
            end

            Ared = f - f1;
            Pred = f - (f + g'*d + 0.5*d'*B*d);
              
            rho = Ared/Pred;                                                % compute the ratio between Actual and Predicted reductions

            if rho >= alpha                                                 % successful iteration
                Delta = min([2*Delta Delta_max]); 

                x_save = x;                                                 
                g_save = g;                                                 

                flag_s = 1;                                                 % allow to compute s_{k} = x_{k} - x_{k-1} at the next iteration
                flag_y = 1;                                                 % allow to compute y_{k} = g_{k} - g_{k-1} at the next iteration
                flag_first_success = flag_first_success + 1;                % allow to start the BFGS update

                x = x1;
                f = f1;  
                k = k + 1;

                Step = 1;
            else
                Step = 4;                                                   % unsuccessful iteration
            end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  STEP 4  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        case 4

            Delta = Delta/2;                                                % decrease the radius for unsuccessful iteration
            flag_s = 0;                                                     % does not allow to compute s_{k} = x_{k} - x_{k-1} at the next iteration

            if tau*sqrt(n) <= Delta                                         % unsuccessful iteration of type I
                flag_y = 0;                                                 % does not allow to compute y_{k} = g_{k} - g_{k-1} at the next iteration
                k = k + 1;

                Step = 2;
            else                                                            % unsuccessful iteration of type II
                flag_y = 1;                                                 % allow to compute y_{k} = g_{k} - g_{k-1} at the next iteration
                tau = tau/2;
                k = k + 1;

                Step = 1;
            end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%  SWITCH STEP  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    end

%%%%%%%%%%%%%%%%%%%%%%%%%  STOPPING CONDITIONS  %%%%%%%%%%%%%%%%%%%%%%%%%%%

end

if nf >= nfmax
    stop = 1;
end

if Delta <= Delta_tol
    stop = 2;
end

%%%%%%%%%%%%%%%%%%%%%%%%  BUILD MONOTONE HISTORY H  %%%%%%%%%%%%%%%%%%%%%%%

H = zeros(nfmax,1);
H(1) = H0(1);

if nfmax <= nf
    for i = 2:nfmax
        H(i) = min([H(i-1) H0(i)]);
    end
else
    for i = 2:nf
        H(i) = min([H(i-1) H0(i)]);
    end

    for j = nf+1:nfmax
        H(j) = H(nf);
    end
end

disp(f_min);

% Remark: Since the condition on the maximum number of function evaluations
% is only checked at the end of each iteration, TRFD-S may perform more
% than nfmax evaluations (the maximum number being nfmax + n).
% Therefore, this could allow f_min to be lower than the last entry of H.
% Nevertheless, we still provide H to allow the users to plot data profiles in a fair way.


