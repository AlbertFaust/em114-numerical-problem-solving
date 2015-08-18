clc
clear all
close all

N = 100 ;
delta_theta = 2.0*pi/N ; 

r = 10.0 ; 

circle = zeros(N,1) ; 

for(ct=1:N) 
circle(ct) = r*exp(i*(ct-0.5)*delta_theta) ; 
end


c = 0.5 + 0.5*i ; 
z = 0.0 ; 
z_r = abs(z) ; 

figure
plot(circle) 
hold on
axis([-r r -r r]) 


sequence_ct = 0 ; 

while( (z_r < r )&&(sequence_ct < 100) )  
z = z*z + c ;
z_r= abs(z) ;
hold on
plot(z,'r*')     
axis([-r r -r r]) 
sequence_ct = sequence_ct + 1 ; 
pause(0.25)
end

if(sequence_ct >= 100) 
    fprintf(1,'Sequence appears to converge \n') ; 
    else
    fprintf(1,'Sequence appears to diverge \n') ; 
end

    