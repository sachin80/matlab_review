function [value, isterminal, dircn] = proj(t, z, flag)
% PROJ: ODE for projectile motion with event detection 
g = 9.81; 
if nargin < 3 || isempty(flag)
    value = [z(2); 0; z(4); -g]; 
else
    switch flag
        case 'events'
            value = z(3);       % 'value' for the zero crossing for y 
            isterminal = 1;     % 'isterminal': y=0 is terminal 
            dircn = -1;         % 'dircn': ydot < 0
        otherwise 
            error('function not programmed for this event');
    end
end
