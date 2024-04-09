% let's solve Ax = b for different values of r
A = [5, 2*r, r; 3, 6, 2*r-1; 2, r-1, 3*r];
b = [2; 3; 5];
det_A = det(A)
x = A\b
