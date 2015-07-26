clear all

A(1,1) = 3;
A(1,2) = 20;
A(2,1) = 4;
A(2,2) = 30;

C = inv(A);

fprintf(1, 'C(1,2) = %1.1f \n',C(1,2));
fprintf(1, 'C(2,2) = %1.1f \n',C(2,2));
