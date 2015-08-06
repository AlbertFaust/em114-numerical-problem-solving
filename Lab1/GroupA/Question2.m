clear all;

N = 100;
x_upper = 20;
x_lower = 0;
delta_x = (x_upper-x_lower)/N ; 

for ct=1:N
  x(ct) = x_lower + (ct-0.5)*delta_x ;  
  f(ct) = exp((x(ct)/5)-cos(x(ct)));
end

plot(x,f,'r')
legend('f = e^((x/5)-cos(x))')
xlabel('x')
title('f(x) = e^((x/5)-cos(x))')
axis([0 20 0 70])

fprintf('n is %d\n',x_upper);
