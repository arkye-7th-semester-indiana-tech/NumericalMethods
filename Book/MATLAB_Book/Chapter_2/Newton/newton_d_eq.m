%	Chapter 2: Functions of One Variable
%	Section 2.3: Newton's Method
%	From the book: Applied Numerical Analysis Using MATLAB 2ed.

run newton_d

%	Page 70 - Example 2.11: Newton's Method for a Double Root
disp( '> Example 2.11 ----------------------- ' )
f = inline('(((x^2)-5)^2)*((x^2)-3)');
df = inline('((4*x)*((x^2)-5)*((x^2)-3))+((2*x)*(((x^2)-5)^2))');
[x, y] = Newton_d(f, df, 2, 0.0001, 10);