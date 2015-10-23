%	Chapter 2: Functions of One Variable
%	Section 2.2: Secant-Type Methods
%	From the book: Applied Numerical Analysis Using MATLAB 2ed.

run secant

%	Page 58 - Example 2.5: Finding the Square Root 3 by the Secant Method
disp( '> Example 2.5 ------------------------ ' )
[xx, yy] = Secant(inline('x.^2 - 3'), 1, 2, 0.00000001, 10)

%	Page 60 - Example 2.6: Central Angle of an Elliptical Orbit
disp( '> Example 2.6: t=10 ------------------ ' )
f = inline('20*pi -100*x + 50*sin(x)')
[xx, yy] = Secant(f, 1, 2, 0.0001, 10)

disp( '> Example 2.6: t=20 ------------------ ' )
f = inline('40*pi -100*x + 50*sin(x)')
[xx, yy] = Secant(f, 2, 3, 0.0001, 10)

%	Page 62 - Example 2.7: A Challenging Problem
disp( '> Example 2.7 ------------------------ ' )
[xx, yy] = Secant(inline('x.^5 - 0.5'), 0, 1, 0.0001, 10)