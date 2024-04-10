function sinc = sincfun(x)
sinc = sin(x)./x;
% Can use this as a handle to a plot function in the cmd window: 
% ezplot(@(x)sincfun(x))