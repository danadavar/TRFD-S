function d = inner_solver_box (x, n, lb, ub, Delta, g, B)

% Solve the box-constrained trust-region subproblem by using FISTA algorithm with Dykstra's projection

% A. Beck, and M. Teboulle, A fast iterative shrinkage-thresholding algorithm for linear inverse problems. SIAM J. Sci. Comput., 2 (2009), pp 183-202.
% J. P. Boyle, and R. L. Dykstra, A method for finding projections onto the intersection of convex sets in Hilbert spaces.
% Advances in Order Restricted Statistical Inference: Proceedings of the Symposium on Order Restricted Statistical Inference (1986), pp 28-47.

x_fista = x;
y  = x;

L = norm(B,2);

if isequal(B, zeros(n,n))
    L = 1;
end

t = 1;

for j = 1:100*n*n

    x_dyk = y - g/L;
    p = zeros(n,1);
    q = zeros(n,1);

    while true
        
        y_dyk = x + (Delta/max([norm(x_dyk + p - x) Delta])) * (x_dyk + p - x); % project on the ball
        p = x_dyk + p - y_dyk;
        x_dyk_new = min(max(y_dyk + q, lb), ub);                                % project on the box
        q = y_dyk + q - x_dyk_new;
        
        if norm (x_dyk_new - x_dyk, 2) <= 10^(-8)
            break
        else
            x_dyk = x_dyk_new;
        end
    end

    x1_fista = x_dyk;

    if norm (x1_fista - x_fista, 2) <= 10^(-12)
        break
    end

    t_1 = (1 + sqrt(1 + 4*t^2))/2;
    y_1 = x1_fista + ((t - 1)/t_1) * (x1_fista - x_fista);

    g = g + B * (y_1 - y);
    y = y_1;
    x_fista = x1_fista;
    t = t_1;
end

d = x1_fista - x;
end
