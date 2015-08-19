clc 
clear all
close all

% Give limits of integration and initial number of divisions
x_lower = 0.0 ; 
x_upper = 1.0 ; 
N = 1000 ; 

% Determine initial delta_x
delta_x = (x_upper - x_lower)/N ; 

% initialise variables
integral_old = 0.0;
ii=0;

% tolerance
tol = 1e-3;

% initialise error
err = 1;

while abs(err)>tol
integral = 0;
 ii=ii+1;

% evaluate integral
for(ct = 1:N) 
x(ct) = x_lower + (ct-0.5)*delta_x ; 
integrand = func_integral(x(ct)) ;  
integral  = integral  + integrand*delta_x ; 
end

% determine error and prepare variables for next loop
err = integral-integral_old;
delta_x = delta_x/2;
N = N*2;
integral_old = integral;

end

% Output result
fprintf(1,'The integral is approximately equal to %2.2f \n',integral) ;










