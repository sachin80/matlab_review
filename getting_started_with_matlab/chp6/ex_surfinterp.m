% SURFINTERP: script file to generate an interpolated surface.
% Given vectors x, y, and z generate data matrix zi from 
% interpolation to fit a surface through the data. 
xv = 2 * rand(1, 100) - 1;      % given x
yv = 2 * rand(1, 100) - 1;      % given y 
zv = 3./(1 + xv.^2 + yv.^2); 
% show the data as a stem plot
scatter3(xv, yv, zv)
% create uniformly spaced xi and yi
xi = linspace(-1, 1, 30); 
yi = xi'; 
% v4 is the interp method
[Xi, Yi, Zi] = griddata(xv, yv, zv, xi, yi, 'v4');
% plot interpolated surface
surf(Xi, Yi, Zi)