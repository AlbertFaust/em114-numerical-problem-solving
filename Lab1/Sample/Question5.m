x(1) = 0;
x(2) = 140;
x(3) = -140;

f(1) = 0;
f(2) = -165;
f(3) = -165;

N = 2;

cofs = polynomial_fit(x,f,N);

a0=cofs(1);
a1=cofs(2);
a2=cofs(3);

fprintf('a0 is %1.5f\n', a0);
fprintf('a1 is %1.5f\n', a1);
fprintf('a2 is %1.5f\n', a2);
