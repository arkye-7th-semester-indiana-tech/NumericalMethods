run bisection

f = @(x) (0.890/3)*x.^3 - 4.45*x.^2 + 20;
a = bisection(f,14, 15, 100, 0.00000001);