function [x, f, nf, H] = run_nomad (x0, Ffun, nfmax, lower, upper, p)

% To make run_nomad work, the user should follow the instructions on the link https://github.com/bbopt/nomad/issues/128
% which is mentioned on https://nomad-4-user-guide.readthedocs.io/en/latest/Appendix.html#guide-matlab-mex
% The folder nomad-v.4.4.0 is already provided in "...\Numerical Experiments\Methods\NOMAD"

n = height(x0);
params = struct('display_degree', '0', 'max_bb_eval', sprintf('%d', nfmax) ,'history_file', sprintf('data_profile_nomad_%d.txt', p));
x0 = min(max(x0, lower), upper); % projects x0 on the box

[x, f, hinf, exit_status, nf] = nomadOpt(Ffun, x0, lower, upper, params);

if p ~= 10 && p ~= 20 && p ~= 30 && p~= 40 && p ~= 50
    filename = sprintf('data_profile_nomad_%d.0.txt', p);
else
    filename = sprintf('data_profile_nomad_%d.txt', p);
end

fid = fopen(filename, 'r');

if fid == -1
    error('Could not open file: %s', filename);
end

% Initialize an empty array to store function evaluations
H0 = [];

% Loop through each line of the file

while ~feof(fid)
    line = fgetl(fid); % Read a line
    if ~isempty(line) && ~startsWith(line, '#') % Skip empty lines and comments
        data = str2num(line); % Convert the line into a numeric array
        if numel(data) >= n+1 % Check if there are at least n+1 columns
            H0 = [H0; Ffun(data(1:n))]; % Append the n+1st column
        end
    end
end

fclose('all');

%%%%%%%%%%%%%%%%%%%%%  BUILD MONOTONE HISTORY H  %%%%%%%%%%%%%%%%%%%%%%%%%%

H = zeros(nfmax,1);
H(1) = H0(1);

if nfmax <= nf
    for i = 2:nfmax
        if H0(i) > H(i-1)
            H(i) = H(i-1);
        else
            H(i) = H0(i);
        end
    end
else
    for i = 2:nf
        if H0(i) > H(i-1)
            H(i) = H(i-1);
        else
            H(i) = H0(i);
        end
    end

    for j = nf+1:nfmax
        H(j) = H(nf);
    end
end

f_min = H(end);
disp(f_min);