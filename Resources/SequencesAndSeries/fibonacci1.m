clc 
clear all
close all

N = 20 ; % How many numbers do you want
f = zeros(N,1) ;  % Set aside storage for the numbers - not necessary but advisable. 

%Initialise the first two members of the sequence. 
f(1) = 1 ; 
f(2) = 1; 

fprintf(1,'Element 1 is %d \n',f(1) ) ; 
fprintf(1,'Element 2 is %d \n',f(2) ) ; 

    
for(ct  = 3:N) 
f(ct) = f(ct-1) + f(ct-2) ; 
fprintf(1,'Element %d is %d \n',ct,f(ct) ) ; 
end


