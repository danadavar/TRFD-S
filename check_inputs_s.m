function [x, Ffun, n, lb, ub, check] = check_inputs_s (x0, Ffun, nfmax, lb, ub)

% Check the user-defined inputs
% If any error is detected, then check = 0
% Otherwise, check = 1

if isvector(x0) && isnumeric(x0)                                           % check x0 is a vector of numbers
    if size(x0, 2) > 1
        x0 = x0';
    end

    n = height(x0);   
else
    fprintf("\n Error: x0 must be a vector \n");
    [x, Ffun, n, lb, ub] = deal([]);
    check = 0;
    return
end

if ~isvector(lb) || ~isnumeric(lb) || ~isvector(ub) || ~isnumeric(ub)      % check lb and ub are vectors of numbers
    fprintf("\n Error: lb and ub must be vectors \n");
    [x, Ffun, n, lb, ub] = deal([]);
    check = 0;
    return
end

if size(lb, 1) ~= size(ub, 1) || size(lb, 1) ~= size(x0, 1)
    fprintf("\n Error: x0, lb and ub must have the same dimensions \n");   % check lb and ub have the same dimensions
    [x, Ffun, n, lb, ub] = deal([]);
    check = 0;
    return
end

if isempty(lb) && isempty(ub)                                              % set lb, ub and x
    lb = -Inf*ones(n,1);
    ub = Inf*ones(n,1);
    x = x0;                                           
else
    if ~isempty(lb) && ~isempty(ub)
        x = min(max(x0, lb), ub); 
    else
        if ~isempty(lb)
            ub = Inf*ones(n,1);
            x = min(max(x0, lb), ub); 
        end
    
        if ~isempty(ub)
            lb = Inf*ones(n,1);
            x = min(max(x0, lb), ub); 
        end
    end
end

if ~isa(Ffun,'function_handle')                                            % check Ffun is a function
    fprintf("\n Error: Ffun must be a function of x \n");
    [x, Ffun, n, lb, ub] = deal([]);
    check = 0;
    return
end

if ~ isscalar(nfmax) || ~ isnumeric(nfmax)                                 % check nfmax is a scalar
    fprintf("\n Error: nfmax must be a scalar \n");
    [x, Ffun, n, lb, ub] = deal([]);
    check = 0;
    return
end

check = 1;
