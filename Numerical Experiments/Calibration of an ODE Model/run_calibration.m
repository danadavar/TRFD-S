%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run this file to obtain plots for the Calibration of an ODE Model
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
format long

% The beginning of the path must be edited
addpath(genpath("...\Numerical Experiments\Methods"));

% Load the noisy dataset
load("noisy_data.mat", "data");

% Parameters of the ODE solver
opts = odeset('RelTol', 1e-8, 'AbsTol', 1e-10);
y0 = [400; 20]; 
tspan = 0:0.5:35; 

% Inputs for TRFD-S and BOBYQA
x0 = [0.6; 400; 1; 10; 3; 2]; 
Ffun = @(x) funi(x, data);
nfmax = (6+1)*50;
lb = [0.001; 0.001; 0.001; 0.001; 0.001; 0.001]; 
ub = [5; 1000; 10; 500; 10; 5]; 

% Run TRFD-S and BOBYQA
[x_min, f_min, nf, stop, H] = TRFD_S (x0, Ffun, nfmax, lb, ub);
[x_min_boby, f_min_boby, nf_boby, H_boby] = run_bobyqa (x0, Ffun, nfmax, lb, ub);

% Solutions obtained by TRFD-S (x_min) and BOBYQA (x_min_boby)
[t_final, y_final] = ode45 (@(t,y) lotka_volterra_holling (t, y, x_min), tspan, y0, opts);
[t_final_boby, y_final_boby] = ode45 (@(t,y) lotka_volterra_holling (t, y, x_min_boby), tspan, y0, opts);

% First plot
figure;

semilogy(H_boby,'-.b','LineWidth', 2); hold on
semilogy(H, '-r', 'LineWidth', 2);

xlabel('Number of function evaluations','Fontsize', 16); ylabel('Function value (logarithmic)','Fontsize', 16);
legend('BOBYQA', 'TRFD-S', 'Fontsize', 12);
set(gcf,'color','w');

% Second plot
figure;

h1 = plot(t_final, y_final_boby(:,1), "-.b", 'LineWidth', 2); hold on;
plot(t_final, y_final_boby(:,2), "-.b", 'LineWidth', 2); hold on;

h2 = plot(t_final, y_final(:,1), "-r", 'LineWidth', 2); hold on;
plot(t_final, y_final(:,2), "-r", 'LineWidth', 2); hold on;

plot(data.Time, data.Prey, 'o', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerSize', 3.2); hold on;
plot(data.Time, data.Predator, 'o', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerSize', 3.2);

xlabel('Time','Fontsize', 16); ylabel('Population','Fontsize', 16);
[lgd, icons] = legend([h1 h2], {'BOBYQA','TRFD-S'}, 'FontSize', 12);

icons(3).Color  = 'b';      
icons(3).LineStyle = '-.';

icons(4).Color  = 'r';      
icons(4).LineStyle = '-';

set(gca, 'ytick', [])
set(gcf,'color','w');

% Objective function
function f = funi(x, data)

    opts = odeset('RelTol', 1e-8, 'AbsTol', 1e-10);
    y0 = [400; 20];
    tspan = 0:0.5:35;
    
    % Solve ODE
    [t, y] = ode45(@(t,y) lotka_volterra_holling(t, y, x), tspan, y0, opts);
    
    f = (norm(y(:,1) - data.Prey, 2)^2)/(mean(data.Prey)^2) + (norm(y(:,2) - data.Predator, 2)^2)/(mean(data.Predator)^2);
end

% Lotka-Volterra system
function dydt = lotka_volterra_holling(t, y, x)

    H = y(1);  % Prey
    L = y(2);  % Predator
    
    % ODEs
    dH = x(1)*H*(1-H/x(2)) - (x(3)*H*L)/(x(4)+H);
    dL = (x(5)*H*L)/(x(4)+H) - x(6)*L;
    
    dydt = [dH; dL];
end