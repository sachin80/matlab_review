%SINESERIES: computes sin(x) from series expansion.
function [y, err] = sineseries(x, n)
if nargin < 2
    n = 10;
end
y = zeros(length(n), 1);
for i = 1:length(n)
    k = linspace(1, i, i); 
    y(i) = sum((-1).^(k-1).* (x.^(2*k -1))./(factorial(2*k -1)));
end
y_true = sin(pi/6); 
if nargout > 1
    err = abs(y_true - y);
end

