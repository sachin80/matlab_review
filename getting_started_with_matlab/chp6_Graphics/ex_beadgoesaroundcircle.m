% Script file for animating the circular motion of a bead
clf
theta = linspace(0, 2*pi, 1000);
% x, y coordinates of the bead along path 
x = cos(theta); 
y = sin(theta);
% draw the bead at the initial position and assign it a handle 
% using xor so old bead is erased from screen when new bead is drawn 
hbead = line(x(1), y(1), 'marker', 'o', 'markersize', 8, 'erase', 'xor'); 
axis([-1, 1, -1, 1]);
axis("square");
% cycle through the postions 
for k = 2:length(theta)
    set(hbead, 'xdata', x(k), 'ydata', y(k))
    % draw bead at the new position
    drawnow
end 