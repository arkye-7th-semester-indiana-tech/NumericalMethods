%	Chapter 2: Functions of One Variable
%	Section 2.3: Newton's Method
%	From the book: Applied Numerical Analysis Using MATLAB 2ed.

run newton

%	Page 67 - Example 2.9: Finding the Floating Depth for a Wooden Ball
disp( '> Example 2.9: Inline ------------------ ' )
f = inline('x.^3 - 3*x.^2 +4/3');
df = inline('3*x.^2-6*x ');
[x, y] = Newton(f, df, 0.5, 0.00001, 10);

disp( '> Example 2.9: M-File ------------------ ' )
[x, y] = Newton('f_2_9', 'df_2_9', 0.5, 0.00001, 10);

%	Page 69 - Example 2.10: Oscillations in Newton's Method
disp( '> Example 2.10 ------------------------- ' )
f = inline('x.^3 -3*x.^2 + x + 3')
df = inline('3*x.^2 - 6*x + 1')
[x, y] = Newton(f, df, 1, 0.001, 3)