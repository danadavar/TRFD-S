function [g, H, x_min, f_min] = grad_approx (x, f, tau, n, Ffun, lb, ub, x_min, f_min)

% Procedure described in Sections 3 and 4 in the paper
% D. Davar and G. N. Grapiglia: A Finite-Difference Trust-Region Method for Convexly
% Constrained Smooth Optimization, arXiv preprint https://arxiv.org/abs/2510.17366, 2025.

H = zeros(n,1);
I = eye(n);
g = zeros(n,1);

for j = 1:n

    tau_F = min([ub(j)-x(j) tau]);
    tau_B = min([x(j)-lb(j) tau]);

    if tau_F >= tau_B
        z = x + tau_F*I(:,j);
        fz = Ffun(z);
        H(j) = fz;
        g(j) = (fz-f)/tau_F;
    else
        z = x - tau_B*I(:,j);
        fz = Ffun(z);
        H(j) = fz;
        g(j) = (f-fz)/tau_B;
    end

    if fz < f_min
        x_min = z;
        f_min = fz;
    end
end

