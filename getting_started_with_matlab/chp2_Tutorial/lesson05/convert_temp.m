function temp = convert_temp(ti, tf);
c = ti:tf;
c = c';
f = 9/5*c + 32; 
temp = [c, f];
