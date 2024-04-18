function er_norm = expsin(constants, t_data, x_data)
% given intial constants, compute the norm of the error of the fitted curve 
t = t_data;
x = x_data; 
C = constants(1); 
l1 = constants(2); l2 = constants(3); 
xnew = C * exp(-l1 * t).* sin(l2 * t);
er_norm = norm(xnew - x);
