clear

%Note - N needs to be changed to ensure correct accuracy!!
N = 1000;
x_left = 1.25;
x_right = 1.75;

delta_x = (x_right-x_left)/N;
 
% Set arbitrarily high "minimum value" 
the_min_value  = 1000000000000.0 ;

% Step through the function output values
for ct = 1:N 
x(ct) = x_left + (ct-0.5)*delta_x ; 

% define function
f(ct) = x(ct)^2-3*x(ct)+2 ; 

% If we have found a value less than current minimum then overwrite.
% Also take note of corresponding input value.
if f(ct) < the_min_value 
the_min_x_input = x(ct) ; 
the_min_value = f(ct) ; 
end

end

fprintf(1,' The min occurs at x equal to %1.2f \n',the_min_x_input) ; 
fprintf(1,'The min value is equal to %1.2f \n',the_min_value) ; 

figure(1)
plot(x,f)
xlabel('x') ;
ylabel('f(x)') ; 
title('f(x)=x^2-3x+2')
grid

 