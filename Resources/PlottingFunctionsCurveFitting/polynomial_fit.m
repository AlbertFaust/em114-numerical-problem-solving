%polynomial_fit.m


function cofs = polynomial_fit(x,f,n);

% Form the A matrix
for ii = 1:n+1
    A(ii,1) = 1;
end


for ii=1:n+1
for jj = 2:n+1
    A(ii,jj) = x(ii)^(jj-1);
end
end

%Determine the required coefficients using Gaussian elimination
cofs = Gaussian_elimination(A,f,n+1);
