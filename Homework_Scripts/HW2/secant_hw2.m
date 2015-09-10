run secant

f = inline('(0.890/3)*x.^3 - 4.45*x.^2 + 20');
a = 14
b = 15
tol = 0.00000001
[s, y] = Secant(f, a, b, tol, 100);