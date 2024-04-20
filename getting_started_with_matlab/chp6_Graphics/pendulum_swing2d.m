% Script file to animate a bar pendulum 
clf
% coordinates of endpoints of the bar 
data = [0, 0; -1.5, 0]; 
phi = 0; 
% Rotation matrix 
R = [cos(phi), -sin(phi); sin(phi), cos(phi)];
data = R * data; 
axis([-2, 2, -2, 2])
axis('equal')

% def the objects called bar, hinge, and path 
bar = line('xdata', )

