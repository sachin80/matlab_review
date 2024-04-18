% This example shows how to perform graphics 
% placement 
clf
t = linspace(0, 2*pi);
% set first number to small number 
t(1) = eps; 
y = sin(t);
% place areas with width .8 and height .8 at 
% coordinates (.1, .1)
h1 = axes('Position',[0.1 0.1 0.8 0.8]);
plot(t, y), xlabel('t'), ylabel('sint')
% Turn off enclosing box
set(h1, 'Box', 'Off')
xh1 = get(gca, 'xlabel'); 
set(xh1, 'fontsize', 16, 'fontweight', 'bold')
yh1 = get(gca, 'ylabel'); 
set(yh1, 'fontsize', 16, 'fontweight', 'bold')
% place another axes on the same plot 
h2 = axes('position', [0.6 0.6 .2 .2]);
% draw filled polygon
fill(t, y.^2, 'r')
set(h2, 'Box', 'Off');
xlabel('t'), ylabel('sin(t)^2')
set(get(h2, 'xlabel'), 'FontName', 'Times')
set(get(h2, 'ylabel'), 'FontName', 'Times')