function x = Gaussian_elimination(A,b,N)


% The first section converts the A matrix to a triangular matrix

for ii = 1:N-1
    for row = ii+1:N
        p = A(row,ii)/A(ii,ii);
        
        for k = 1:N
            A(row,k)=A(row,k)-p*A(ii,k);
        end
        
        b(row) = b(row)-p*b(ii);
    end
end

% The second section does back substitution

for row = N:-1:1
    x(row) = b(row);
    for ii=row+1:N
        x(row) = x(row)-A(row,ii)*x(ii);
    end
    x(row)=x(row)/A(row,row);
end


