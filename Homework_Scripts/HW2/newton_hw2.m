run newton

f = inline('(0.890/3)*x.^3 - 4.45*x.^2 + 20');
df = inline('0.890*x.^2 - 8.9*x');
x1 = 14
%x1 = 15
tol = 0.00000001
[s, y] = Newton(f, df, x1, tol, 100);