clear all;

N = 100;
x_upper = 15;
x_lower = 0;
delta_x = (x_upper-x_lower)/N ; 

for ct=1:N
  x(ct) = x_lower + (ct-0.5)*delta_x ;  
  f(ct) = log(1+x(ct)+abs(50*sin(x(ct))));
end

plot(x,f,'r')
legend('f = ln(1+x+|50*sin(x)|)')
xlabel('x')
title('f(x) = ln(1+x+|50*sin(x)|)')
axis([0 15 0 5])

fprintf('n is %d\n',x_upper);
