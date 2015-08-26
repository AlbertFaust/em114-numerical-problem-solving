% Code to compare McLaurin series for e^2 against actual functoin.  
clear all
close all
clc 

N = 100 ; 
x_lower = 0.0 ; 
x_upper = 3.0 ; 
delta_x = (x_upper - x_lower)/N ; 
no_of_terms = 3 ; 

for(ct = 1:N) 
x(ct) = x_lower + (ct-0.5)*delta_x ; 
sum = 1.0 ; 
for(ct2 = 1:no_of_terms) 
 sum = sum + power(x(ct),ct2)/factorial(ct2) ; 
end
f(ct) = exp(x(ct)) ; 
mclaurin(ct) = sum ;
end


figure
plot(x,f)  ;
hold on
plot(x,mclaurin,'r') ;
grid on
title('Comparison of Mclaurin series and exp(2.0)')  ; 
xlabel('x') 
ylabel('f(x)') 
legend('exp(x)','McLaurin') 

