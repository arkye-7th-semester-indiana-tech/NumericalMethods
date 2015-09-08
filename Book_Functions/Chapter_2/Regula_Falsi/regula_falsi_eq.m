%	Chapter 2: Functions of One Variable
%	Section 2.2: Secant-Type Methods
%	From the book: Applied Numerical Analysis Using MATLAB 2ed.

run regula_falsi

%	Page 56 - Example 2.3: Finding the Cube Root of 2 Using Regula Falsi
disp( '> Example 2.3 ------------------------ ' )
[s, y] = Falsi(inline('x^3-2'), 1, 2, 0.0001, 8)

%	Page 57 - Example 2.4: Floating Depth for a Cork Ball Using False Position
disp( '> Example 2.4 ------------------------ ' )
% From The Book: Falsi_s?
	% [s, y] = Falsi_s(inline('x.^3-3*x.^2 + 1'), 0, 1, 0.0001, 8)
[s, y] = Falsi(inline('x.^3-3*x.^2 + 1'), 0, 1, 0.0001, 8)

%	Page 62 - Example 2.7: A Challenging Problem
disp( '> Example 2.7 ------------------------ ' )
[s, y] = Falsi(inline('x.^5 - 0.5'), 0, 1, 0.0001, 10)