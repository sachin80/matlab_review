t = linspace(0, 2*pi, 100); 
y1 = sin(t); 
y2 = t; 
y3 = t - (t.^3)/6 + (t.^5)/120; 

plot(t, y1)
line(t, y2, 'linestyle', '--')
line(t, y3, 'marker', 'o', 'linestyle', 'none')
axis([0 5 -1 5])
xlabel('t')
ylabel('Approximations of sin(t)')
title('Fun with sin(t)')
legend('sin(t)', 'linear approx', 'fifth-order approx')

% get the handle of the current axes
h = gca; 
% throw away the enclosing box frame 
set(h, 'box', 'off');
% get the handles of children of axes 
% hline is a vector of handles because h has many children
hline = get(h, 'children')
% change the linewidth of the first line
set(hline(3), 'linewidth', 4)
% make linear approx line invisible
set(hline(2), 'visible', 'off')
% delet the text 'linear approx' 
%delete(hline(3))
% get handle of xlabel 
hx1 = get(h, 'xlabel');
% change text of xlabel 
set(hx1, 'string', 't (angle)')
% change the font of xlabel 
set(hx1, 'fontname', 'times')