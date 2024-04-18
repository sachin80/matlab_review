t = [0:0.1:1000];
for k = 1:10
    outputfile = ['result', int2str(k)]; 
    theta = k * pi * t; 
    x = sin(theta);
    y = cos(theta); 
    z = x.*y.^2; 
    % save variables x, y, and z in mat-file 
    eval(['save ', outputfile, ' x y z'])
end 