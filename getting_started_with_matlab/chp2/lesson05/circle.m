function [x, y] = circlefn(r);
% CIRCLEFN = Function to draw a circle of radius r. 
% File written by Sachin Agrawal on 3/27/24. Last modified 3/27/24. 
% Call syntax: [x, y] = circlefn(r); or just circle(r); 
% Input: r = specified radius 
% Output: [x, y] = the x and y coordinates of data points 
theta = linspace(0, 2*pi, 1000); 
x = r*cos(theta); 
y = r*sin(theta); 
plot(x, y); 
axis('equal');
title(['Circle of radius r =', num2str(r)])