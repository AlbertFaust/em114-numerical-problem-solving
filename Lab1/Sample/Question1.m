clear all;

N = 100;
x_upper = 200*pi;
x_lower = pi;
delta_x = (x_upper-x_lower)/N ; 

for ct=1:N
  x(ct) = x_lower + (ct-0.5)*delta_x ;  
  f1(ct) = sin(log(x(ct))+3);
  f2(ct) = 0;
end

plot(x,f1,'r',x,f2,'b:')
legend('f = sin(ln(x)+3)','x-axis')
xlabel('x')
title('f(x) = sin(ln(x)+3) and x-axis')
axis([pi 200*pi -2 2])

fprintf('f(x) crosses x-axis 2 times\n');
