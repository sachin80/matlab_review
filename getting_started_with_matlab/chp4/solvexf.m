function [det_A, x] = solvexf(r); 
% SOLVEXF solves a 3x3 matrix equation with parameter r 
% This function is called 'solvexf.m'
% To call this function, type: 
% [det_A, x] = solvexf(r); 
% r is the input and det_A and x are output. 
%________________________________________________________________

A = [5, 2*r, r; 3, 6, 2*r-1; 2, r-1, 3*r];
b = [2; 3; 5]; 
det_A = det(A); 
x = A\b; 

