clear, close all
% This is taken from: 
% https://dgleich.wordpress.com/2013/06/04/creating-high-quality-graphics-in-matlab-for-papers-and-presentations/
f = @(x) x.^2; 
g = @(x) 5*sin(x)+5;
dmn = -pi:0.001:pi; 
xeq = dmn(abs(f(dmn) - g(dmn)) < 0.002);
figure(1)
plot(dmn, f(dmn), 'b-', dmn, g(dmn), 'r--', xeq, f(xeq), 'g*');
xlim([-pi, pi]);
legend('f(x)', 'g(x)', 'f(x)=g(x)', 'Location', 'SouthEast');
xlabel('x')
title('Example Figure')
print('example', '-dpng');
print('example_dpi300', '-dpng', '-r300');

% Step 1: choose parameters (line width, font size, picture size, etc
% They give some suggested values for these parameters
% Defaults for this example 
width = 3;  % width in inches
height = 3; % height in inches
alw = 0.75; % AxesLineWidth
fsz = 11;   % Fontsize
lw = 1.5;   % LineWidth
msz = 8;    % MarkerSize

% Step 2: Creating a figure with manually modified properties
% Let's create a new figure. We can set its size via the 'Position'
% setting. These assume 100 dpi for sake of on-screen viweing but does
% not impact the resolution of the saved image. 
% For the current axes, set the default fontsize and axes linewidth
% (different from the plot linewidth). 
% For plotting the results, manually specify the line width and marker
% sizes as part of the plot command itself. The font size for the legend, 
% axes labels, and title are inherited from the setting for the current 
% axes. 

figure(2); 
% Position is based on http://matlab.izmiran.ru/help/techdoc/creating_plots/figure_4.html
pos = get(gcf, 'Position');
% set the size 
set(gcf, 'Position', [pos(1), pos(2) width*100, height*100])
% set the properties 
set(gca, 'FontSize', fsz, 'LineWidth', alw)
% specify plot properties 
plot(dmn,f(dmn),'b-',dmn, g(dmn),'r--',xeq,f(xeq),'g*','LineWidth',lw,'MarkerSize',msz); %<- Specify plot properites
xlim([-pi, pi]);
legend('f(x)', 'g(x)', 'f(x)=g(x)', 'Location', 'southeast');
xlabel('x');
title('Improved Example Figure');

% Step 3: Save the figure to a file and view the final results. 
% There are 2 caveats to saving figures: 
% 1. Depedngin on the size of the figure, Matlab may or may not choose tick
% marks to your liking. These can change again when the figure is saved. 
% Therefore, it's best to manually specify the tick marks so they are 
% preserved in both display and saving. 
% 2. The size needs to be preserved in the saved (i.e. printed) version. To
% do this we have to specify the correct position on paper. 

% set the tick marks 
set(gca, 'XTick', -3:3); 
set(gca, 'YTick', 0:10);
% papersize is 8.5 x 11 inches
papersize = get(gcf, 'PaperSize');
left = (papersize(1) - width)/2;
bottom = (papersize(2) - height)/2;
myfiguresize = [left, bottom, width, height]; 
set(gcf, 'PaperPosition', myfiguresize);

% save the file as png
print('improvedExample', '-dpng', '-r100');

% Define your system
sys = tf([100], [1 100]);

% Create a figure and step plot
figure(3);
h = stepplot(sys);

% Set line width
lw = 2;  % Define your desired line width
% Access the line object and set LineWidth
hLine = findobj(gcf, 'Type', 'Line');  % Find line objects in the current figure
set(hLine, 'LineWidth', lw);  % Set the line width
hTitle = findobj(gcf, 'Type', 'Title')
%Here%s what the corrected steps do:
%%Define the system with a transfer function.
%%Create a figure and generate a step plot, capturing the handle h.
%%Set your desired line width in the variable lw.
%%Find line objects within the current figure (gcf) that are of type 'Line'. This ensures you are modifying only the line objects.
%%Set the LineWidth for all line objects found in the plot.
