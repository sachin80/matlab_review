function zdot = ex_5_6_damp(t, z)
% Consider the following simple linear ODE of second order
% xddot + x = F0 * cos(w * t) 
% 1. Convert the equation to set of first-order ODEs
% z1 = x, z2 = xdot 
F0 = 1;
w = 1;
phi = 0.7; 
zdot = [z(2); F0 * cos(w * t) - phi * z(2) - z(1)]

