
clear all
close all 
clc

% Initialise 
f(1) = 1 ;
f(2) = 1 ; 
phi(1) = 1 ; 
phi(2) = 1 ; 
ct = 2 ; 
% Set tolerance - how many decimal places accuracy do you want?
tol = 1e-5 ; 

%NB - phi(2) == phi(1) so must force code into while loop for first
%iteration 

while(  ( abs( phi(ct) - phi(ct-1) ) > tol) ||   (ct < 3 ) )  
ct = ct+ 1 ;
f(ct) = f(ct-1) + f(ct-2) ; 
phi(ct) = f(ct)/f(ct-1) ;  
end

fprintf(1,'Phi equals %1.10f \n',phi(ct) ) ; 
fprintf(1,'the exact answer is %1.10f\n',(1.0 + sqrt(5))/2.0) ; 


