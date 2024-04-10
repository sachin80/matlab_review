function [y, err] = trigseries(x, n, options)
if nargin < 3
    options = 'both'
end
switch options
    case 'both'
        y = zeros(length(n), 2);
        [y(:, 1), err(:, 1)] = sineseries(x, n); 
        [y(:, 2), err(:, 2)] = cosineseries(x, n); 
    case 'sin'
        [y, err] = sineseries(x, n); 
    case 'cos'
        [y, err] = cosineseries(x, n); 
end 

      


