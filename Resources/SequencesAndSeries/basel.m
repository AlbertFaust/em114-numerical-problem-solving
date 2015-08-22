% Code to investigate  Basel problem. 
clc
close all
clear all

sum = 0 ; 
n = 1 ; 
a(n) = 1 ; 
tol = 1e-8 ; 
while( abs(a(n)) > tol) 
sum = sum + a(n) ; 
n = n + 1 ; 
a(n) = 1.0/(n*n) ; 
end

fprintf(1,'The series equals %1.6f \n',sum) ; 
fprintf(1,'The exact answer equals %1.6f \n',pi*pi/6.0) ; 

