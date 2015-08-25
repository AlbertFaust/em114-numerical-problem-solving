% Code to compute McLaurin series for e^2. 
clear all
close all
clc 

sum = 1.0 ; 
x = 2.0 ; 
n = 1 ; 
a(n) = x ; 
tol = 1e-8 ; 
while (abs(a(n)) > tol) 
sum = sum + a(n) ; 
n = n+ 1 ; 
a(n) = power(x,n)/factorial(n) ; 
end

fprintf(1,'The series equals %1.6f \n',sum) ;
fprintf(1,'The exact answer equals %1.6f \n',exp(2.0)) ;
