function zdot = pend(t, z)
% Call syntax: zdot = pend(t, z); 
%  Inputs are: t = time 
%              z = [z(1); z(2)] = [theta; thetadot]
%   Output is: zdot = [z(2); -w^2*sin(z(1))]
wsq = 1.56;          % specify a value of w^2 
zdot = [z(2); -wsq*sin(z(1))];