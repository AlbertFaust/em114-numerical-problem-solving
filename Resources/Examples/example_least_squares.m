clear
voltage=1:6;
current=[10;8;7;5.5;4;3];
N=6;

% Form a_hat and b_hat by calling the least-squares function;

[a_hat,b_hat] = least_squares(voltage,current,N);


% Plot the given data and the approximation

Nplot = 100;
dv=(voltage(N)-voltage(1))/Nplot;

for ct = 1:Nplot
vplot(ct) = voltage(1) + (ct-0.5)*dv;
cplot(ct) = a_hat + b_hat*vplot(ct);
end

%Plot function and approximation
plot(voltage,current,'*',vplot,cplot)
xlabel('voltage')
ylabel('current')
legend('i_m_e_a_s_u_r_e_d', 'i_a_p_p')
title('A linear approximation to given data')
x_req=8;
y_predict = a_hat + b_hat*x_req;

% Find residual
R=0;
for ii = 1:N
R = R + (current(ii) - (a_hat+b_hat*voltage(ii)))^2;
end

fprintf(1,'R=%1.3f\n',R)
