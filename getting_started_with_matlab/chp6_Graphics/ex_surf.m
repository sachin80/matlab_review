% Script file to generate and plot the surface 
% z = xy(x^2 - y^2)/(x^2+y^2) using meshgrid
% Generate 50 element long vector for x, y 
x = linspace(-3, 3, 50);
y = x;
% Create a grid over the specified domain
[X, Y] = meshgrid(x, y); 
% Calculate Z at each grid point
Z = X.*Y.*(X.^2-Y.^2)./(X.^2+Y.^2);
% Make a wire-frame surface plot of Z 
mesh(X, Y, Z)
title('Plot created by mesh')
figure(2)
meshc(X, Y, Z), view(-55, 200)