clear all;

N = 100;
x_upper = 2*pi;
x_lower = 0;
delta_x = (x_upper-x_lower)/N ; 

for ct=1:N
  x(ct) = x_lower + (ct-0.5)*delta_x ;  
  f1(ct) = cos(2*(sqrt(x(ct)^3-x(ct)^2+4)));
  f2(ct) = 0;
end

plot(x,f1,'r',x,f2,'b:')
legend('f = cos(2*(sqrt(x^3-x^2+4)))','x-axis')
xlabel('x')
title('f(x) = cos(2*(sqrt(x^3-x^2+4))) and x-axis')
axis([0 2*pi -2 2])

fprintf('f(x) crosses x-axis 8 times\n');
