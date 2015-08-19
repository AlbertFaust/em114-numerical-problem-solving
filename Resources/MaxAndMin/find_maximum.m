 function [the_max_value,the_max_x_input]=find_maximum(x,N)

% x is range of x over which we find maximum value
% N is number of points tested.

x_upper = x(N);
x_lower = x(1);
delta_x = (x_upper-x_lower)/N ; 

% Set arbitrarily low "maximum value" 
the_max_value  = -1000000000000.0 ;

%Step through the function output values
for ct = 1:N 
x(ct) = x_lower + (ct-0.5)*delta_x ; 

% define function
g(ct) = func(x(ct)) ; 

% If we have found a value greater than current maximum then overwrite.
% Also take note of corresponding input value.
if(g(ct) > the_max_value) 
the_max_x_input = x(ct) ; 
the_max_value = g(ct) ; 
end

end

