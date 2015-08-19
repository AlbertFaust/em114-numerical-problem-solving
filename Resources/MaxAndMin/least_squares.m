
function [a_hat,b_hat] = least_squares(x,y,N)

% determine a_hat and b_hat for a linear approximation by the least squares method to
% data y(x).



%Form the sum of xi*yi
term1 = 0;
for ii = 1:N
term1 = term1 + (x(ii)*y(ii));
end

%Form the sum of xi and the sum of yi
%Form the product of the sums and divide by N
term2a = 0;
term2b = 0;
for ii = 1:N
term2a = term2a + x(ii);
term2b = term2b + y(ii);
end
term2 = term2a*term2b/N;


% Form the sum of xi*xi
term3 = 0;
for ii = 1:N
term3 = term3 + x(ii)*x(ii);
end

% Form sum(xi)^2/N
term4 = 0;
for ii = 1:N
term4 = term4 + x(ii);
end
term4 = term4^2/N;

% Form the sum of xi and yi
term5 = 0;
term6 = 0;
for ii = 1:N
term5 = term5 + y(ii);
term6 = term6 + x(ii);
end


% Form b_hat 


b_hat_top = term1 - term2;
b_hat_bot = term3 - term4;
b_hat = b_hat_top/b_hat_bot;

% Form a_hat
a_hat = 1/N*term5- b_hat/N*term6;

