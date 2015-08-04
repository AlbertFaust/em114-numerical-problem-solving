clear all;

N = 100;
x_upper = 2*pi;
x_lower = 0;
delta_x = (x_upper-x_lower)/N ; 

for ct=1:N
  x(ct) = x_lower + (ct-0.5)*delta_x ;  
  f1(ct) = sin(sqrt(x(ct)^3)+3);
  f2(ct) = 0;
end

plot(x,f1,'r',x,f2,'b:')
legend('f = sin(sqrt(x^3+3))','x-axis')
xlabel('x')
title('f(x) = sin(sqrt(x^3+3)) and x-axis')
axis([0 2*pi -2 2])

fprintf('f(x) crosses x-axis 5 times\n');
