%function_plot.m

clear
% Define x values ;
N = 100;
x_upper = pi;
x_lower = -pi;
delta_x = (x_upper-x_lower)/N ; 

% Define the functions
for ct=1:N
x(ct) = x_lower + (ct-0.5)*delta_x ;  
f1(ct) = 0.5*x(ct)^2;
f2(ct) = sin(x(ct));
end

% Plot the functions and label the graphs
plot(x,f1,'r',x,f2,'b:')
legend(' f_1=0.5x^2','f_2=sin(x)')
xlabel('x')
title('f_1=0.5x^2  and f_2=sin(x)')
axis([-pi pi -2 5])

