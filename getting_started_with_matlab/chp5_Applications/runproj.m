%RUNPROJ: a script file to run the projectile example
tspan = [0, 2]; 
v0 = 5; theta = pi/4; 
z0 = [0; v0*cos(theta); 0; v0*sin(theta)];           % initial conditions
options = odeset('events', 'on'); 
[t, z, te, ze, ie] = ode45('proj', tspan, z0, options); 
x = z(:, 1); y = z(:, 3);
plot(x, y), axis('equal')
xlabel('x'), ylabel('y')
title('Projective Trajectory')
info = {['Range (x-value) = ', num2str(ze(1)), 'm'], 
        ['Time of flight = ', num2str(te), 's']};
text(1, 0, info{1})
text(1, -0.1, info{2})

