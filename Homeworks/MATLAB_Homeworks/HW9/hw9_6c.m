run rules/simpson_rule

t = 0;
question_c = 'sqrt((((-2)*(sin(t)))**2)+((cos(t))**2))';
f = inline (question_c,t);
a = 0;
b = 2*pi;
n = 24;

arc_length_approximated = Simp(f, a, b, n)

save outputs/hw9_6c_output arc_length_approximated;
