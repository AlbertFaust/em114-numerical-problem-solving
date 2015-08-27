clear

v_data = [0.5 1 1.5 2];
i_data = [10 25 50 80];

A = [1 0.5 0.5^2 0.5^3;
    1 1 1^2 1^3;
    1 1.5 1.5^2 1.5^3;
    1 2 2^2 2^3];

B = [10;25 ;50; 80];

n = 4;

sols = Gaussian_elimination(A,B,n);

a0 = sols(1);
a1 = sols(2);
a2 = sols(3);
a3 = sols(4);

% Now plot the function

% Define v values ;
Nv = 100;
v_upper = 2;
v_lower = 0;
delta_v = (v_upper-v_lower)/Nv ; 

% Define the function
for ct=1:Nv
v(ct) = v_lower + (ct-0.5)*delta_v ;  
i_plot(ct) = a0 + a1*v(ct) + a2*v(ct)^2 +a3*v(ct)^3;
end

% Plot the functions and label the graphs
plot(v,i_plot,':',v_data,i_data,'*')
xlabel('v')
ylabel('i')
title('i-v curve')
axis([0 2 0 100])

