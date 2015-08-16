clear all;

x(1) = 0;
x(2) = 0.5;
x(3) = 1;
x(4) = 1.5;
x(5) = 2;

f(1) = 0;
f(2) = 17.8125;
f(3) = 36;
f(4) = 47.8125;
f(5) = 48;

N = 4;

cofs = polynomial_fit(x,f,N);

a0=cofs(1);
a1=cofs(2);
a2=cofs(3);
a3=cofs(4);
a4=cofs(5);

fprintf('a0 is %d\n', a0);
fprintf('a1 is %d\n', a1);
fprintf('a2 is %d\n', a2);
fprintf('a4 is %d\n', a4);
