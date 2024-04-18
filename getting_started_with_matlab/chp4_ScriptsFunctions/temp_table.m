% temp_table - generatos and writes a temperature table 
% script firl to generate a Fahrenheit-Celsius
% temperature table. The table is written in a file 
% named 'Temparature.table'. 
%-----------------------------------------------------------
F = -40:5:100; 
C = (F-32)*5/9; 
t = [F; C]; 
fid = fopen('Temperature.table', 'w'); 
fprintf(fid, 'Temperature table\n');
fprintf(fid, '-----------------\n');
fprintf(fid, 'Fahrenheit     Celsius\n');
fprintf(fid, '  %4i         %8.2f\n', t); 
fclose(fid);
