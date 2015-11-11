run rules/trapezoid_rule

x = 0;
question_a = '(sin(pi*(x**2))*(e**(-x)))**2';
f = inline (question_a,x);
a = 0;
b = 1;
n = 24;

approximation = Trap(f, a, b, n)
volume_approximated = pi * approximation

save outputs/hw9_6a_output approximation volume_approximated;
