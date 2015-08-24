clc
clear all
close all

% Set period and amplitude
T = 2.0*pi  ; 
A = 1.0 ; 
omega0 = 2.0*pi/T ; 

% Set number of samples in each period
N_per_period = 1000; 

% Waveform repeats - specify how many times.
no_of_periods = 8; 

t_lower = -pi  ; 
delta_t = T/N_per_period ; 

% How many terms to compute in the Fourier series?
no_of_fourier_terms = 100; 



% First model the function over one period 
    
for(ct= 1:N_per_period) 
    
t(ct) = t_lower + (ct-0.5)*delta_t ; 
the_function( ct) =   t(ct)/ pi ;

% Now make Fourier approx for the sawtooth wave 
fourier(ct) = 0.0 ; 
alternating_one = 1.0 ; 
for(ct2 = 1 : no_of_fourier_terms) 
bn = (alternating_one/ct2) ; 
fourier(ct) = fourier(ct) + bn*sin(ct2*t(ct)) ; 
alternating_one = alternating_one*-1 ; 
end

fourier(ct) = fourier(ct)*2.0/pi ; 



end


% Compare the function to the Fourier series over one period.
figure
plot(t,the_function) ; 
grid on
hold on
plot(t, fourier,'r') ; 
xlabel('t')
ylabel('f(t)') ; 
title(' Single period of function') 
axis([-pi pi -1 1]) 
legend('f','fourier') ; 



% Now copy the data from a single period into many periods.  
extended_t = t ; 
extended_f = the_function; 
extended_fourier = fourier ; 


for(ct = 2:no_of_periods) 
% Time is time in first period plus multiples of T 
extended_t = [extended_t t + (ct-1)*T] ; 
% function outputs simply repeat. 
extended_f = [extended_f the_function ] ; 
extended_fourier = [extended_fourier fourier] ; 
end


% Play the two waveforms for comparison.
sound(extended_f)
sound(extended_fourier) 




%Plot the waveforms over many periods. 

 figure
 hold on
 grid on
  xlabel('t')
 ylabel('f(t)') ; 
title('Several periods of function') ; 
axis([ -pi -pi+(T*no_of_periods) -1 1 ])
 plot(extended_t,extended_f) ;
  hold on
 plot(extended_t,extended_fourier,'r');
legend('f','fourier') 

