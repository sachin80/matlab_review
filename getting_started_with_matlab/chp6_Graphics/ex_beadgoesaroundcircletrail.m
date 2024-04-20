% Script file for animating the circular motion of a bead
clf;
theta = linspace(0, 2*pi, 1000);
% x, y coordinates of the bead along path 
x = cos(theta); 
y = sin(theta);
% draw the bead at the initial position and assign it a handle 
% using xor so old bead is erased from screen when new bead is drawn 
hbead = line(x(1), y(1), 'marker', 'o', 'markersize', 8, 'erase', 'xor');
htrail = line(x(1), y(1), 'marker', '.', 'color', 'r', 'erase', 'none');
axis([-1, 1, -1, 1]);
axis("square");
% Initialize arrays to store the trail
trail_x = x(1);
trail_y = y(1);
% cycle through the positions 
for k = 2:length(theta)
    set(hbead, 'xdata', x(k), 'ydata', y(k));
    % Append new position to the trail arrays
    trail_x = [trail_x, x(k)];
    trail_y = [trail_y, y(k)];
    set(htrail, 'xdata', trail_x, 'ydata', trail_y);
    % draw bead at the new position
    drawnow;
end 
 