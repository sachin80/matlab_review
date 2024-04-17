% Find the solution for the following set of linear equations 
% x + 2y + 3z = 1
% 3x + 3y + 4z = 1
% 2x + 3y + 3z = 2
A = [1, 2, 3; 3, 3, 4; 2, 3, 3];
b = [1; 1; 2];
disp("Solution to Ax = b using \:");
x = A\b 
disp("Solution to Ax = b using rref:")
% Form the augmented matrix 
C = [A, b];
Cr = rref(C)
disp("Solution to Ax = b using LU decompisition:")
[L,U] = lu(A);
% LUx = A and so Ux = y and Ly = b
y = L\b; 
x = U\y
