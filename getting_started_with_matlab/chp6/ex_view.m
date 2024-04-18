%---script file to draw a filled circle and view it in 3D---
theta = linspace(0, 2*pi, 100); 
x = cos(theta);
y = sin(theta); 
subplot(1, 2, 1)
fill(x, y, 'g'), axis('square')
subplot(1, 2, 2)
fill(x, y, 'g'), axis('square')
% view as 3D 
view(3)