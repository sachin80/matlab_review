%--Script file to generate an overlay plot with the line command--
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
legend('sin(t)', 'linear approx.', 'fifth-order approx', Location='north')