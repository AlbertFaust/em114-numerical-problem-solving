clc 
clear all
close all

%Initalise the sequence
f(1) = 1 ; 
f(2) = 1 ; 
ct = 2 ; 

while(f(ct) < 10000) 
ct = ct + 1 ;
f(ct) = f(ct-1) + f(ct-2) ; 
end

% Output the answer
fprintf(1,' First element greater than 10000 is f(%d) - value is %d \n',ct,f(ct)) ; 

% Always check your answer! Confirm that the previous element was not
% greater than 10000 
fprintf(1,' Previous value was %d \n',f(ct-1)) ; 
