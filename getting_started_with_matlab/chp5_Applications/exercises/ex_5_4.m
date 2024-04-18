% Nonlinear curve fit
t = [0, 1.40, 2.79, 4.19, 5.56, 6.98, 8.38, 9.77, 11.17, 12.57];
x = [0, 1.49, 0.399, -0.75, -0.42, 0.32, 0.32, -0.10, -0.21, 0];
% Let's find the best, C, l1, l2 by minimizing the norm of the error 
constants = [1, 0.1, 0.8];          % initial guess 
constants = fminsearch('expsin', constants, [], t, x);
x_fit = constants(1) * exp(-constants(2) * t).*sin(constants(3) * t);
plot(t, x, t, x_fit, 'o')