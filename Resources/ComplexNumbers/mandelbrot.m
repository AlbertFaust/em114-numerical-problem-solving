% Tidy up things%%%
clear all 
close all
clc
%%%%%%%%%%%%%%%%%%%

%% Set region of complex plane       %%%%%%%%%%%%%%
%% Change these to zoom in on particular regions %%
lower_real = -1.5 ; 
upper_real = 1.0 ; 
lower_imag = -1.0 ; 
upper_imag = 1.0 ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%    N discretisations in real and imaginary %%%%
%%    Total discretisations is N squared. %%%%%%%%
%%    Larger N means nicer pictures but slower %%%
%%    run time.          %%%%%
N = 500 ; 
delta_real = (upper_real - lower_real)/N; 
delta_imag = (upper_imag - lower_imag)/N; 

%% Set all values to 0
values = zeros(N) ; 

%%  Threshold to see if sequence given by z --> z^power + c diverges
%%  If number in sequence ever bigger than threshold then assume divergence
threshold = 10 ; 

%% Number of numbers to make in sequence z --> z^power+ c 
no_of_iterations = 200 ; 

%% Make mandelbrot set for z --> z^power + c. Can vary value of power.. 
the_power = 2.0; 

    


%% Step through complex plane. ct1 steps in imaginary
for(ct1=1:N) 
%% ct2 steps in real.     
for(ct2=1:N) 

    c(ct1,ct2) = lower_real + (ct2-0.5)*delta_real + i*(lower_imag + (ct1-0.5)*delta_imag) ;
%% initialise values to highest number of iterations possible 
    values(ct1,ct2) =   no_of_iterations ; 
%% initialise z in sequence z -->  z^power + c
    the_z_number = 0 ; 
%% Make sequence 
    for(ct3 = 1:no_of_iterations) 
%% Compute z --> z^power + c
        the_z_number = power(the_z_number,the_power) + c(ct1,ct2) ;
%% Check to see if sequence is increasing without bound.
    if(abs(the_z_number) > threshold )
%% If so note at what iteration did it break past threshold. 
        values(ct1,ct2) =  ct3 ; 
%% Increase ct3 to short-cut out of for loop (don't need to check any more)
        ct3 = no_of_iterations+1 ; 
    end
  
    end
    
    
end
end

%% Make figure for animation
figure

%% Make nice contour image
surf(real(c),imag(c),values) ;
view(2)
shading interp
%% Take frame for movie
