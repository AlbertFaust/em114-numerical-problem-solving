clear all;

N = 100;
x_upper = 17;
x_lower = 0;
delta_x = (x_upper-x_lower)/N ; 

for ct=1:N
  x(ct) = x_lower + (ct-0.5)*delta_x ;  
  f(ct) = exp((x(ct)/4)-cos(x(ct)));
end

plot(x,f,'r')
legend('f = e^((x/4)-cos(x))')
xlabel('x')
title('f(x) = e^((x/4)-cos(x))')
axis([0 17 0 150])

fprintf('n is %d\n',x_upper);
