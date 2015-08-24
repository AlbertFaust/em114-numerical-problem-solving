%Code to examine how accurate Fourier series is for a given input 

clc
clear all
close all

T = 2.0*pi  ; 
omega0 = 2.0*pi/T ; 
no_of_fourier_terms = 10; 



the_t = pi/2.0 ; 
a0 = 0.0 ; 
fourier_approx = a0 ; 

alternating_one = 1.0 ; 
for(ct = 1 : no_of_fourier_terms) 
an = 0.0 ; 
bn = (2.0/pi)*(alternating_one/ct) ; 
fourier_approx = fourier_approx + an*cos(ct*the_t) + bn*sin(ct*the_t) ; 
alternating_one = alternating_one*-1 ; 
end


fprintf(1,'After %d terms the answer is %1.6f \n',ct,fourier_approx)  ;

 
