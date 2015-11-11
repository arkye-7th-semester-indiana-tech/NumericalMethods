run rules/simpson_rule

x = 0;
question_b = '(e**x)*sqrt(1+(e**(2*x)))';
f = inline (question_b,x);
a = 0;
b = 1;
n = 24;

approximation = Simp(f, a, b, n)
surface_area_approximated = 2*pi*approximation

save outputs/hw9_6b_output approximation surface_area_approximated;
