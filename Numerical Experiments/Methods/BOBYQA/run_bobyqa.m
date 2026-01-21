function [x, f_min, nf, H] = run_bobyqa (x0, Ffun, nfmax, lower, upper)

options = struct();
options.maxfun = nfmax;

x0 = min(max(x0, lower), upper); % projects x0 on the box
options.honour_x0 = true;

[x, f, exitflag, output] = bobyqa (Ffun, x0, lower, upper, options);

nf = height(output.fhist');

%%%%%%%%%%%%%%%%%%%%%  BUILD MONOTONE HISTORY  %%%%%%%%%%%%%%%%%%%%%%%%%%%%

H1 = output.fhist';

if height(H1) == 1
    H1 = [H1;H1];
end

H = zeros(nfmax,1);
H(1) = H1(1);

if nfmax <= height(H1)
    for i = 2:nfmax
        if H1(i) > H(i-1)
            H(i) = H(i-1);
        else
            H(i) = H1(i);
        end
    end
else
    for i = 2:height(H1)
        if H1(i) > H(i-1)
            H(i) = H(i-1);
        else
            H(i) = H1(i);
        end
    end

    for j = height(H1)+1:nfmax
        H(j) = H(height(H1));
    end
end

f_min = H(end);
disp(f_min);