%	Page 55 - Chapter 2: Functions of One Variable
%	Section 2.2: Secant-Type Methods
%	From the book: Applied Numerical Analysis Using MATLAB 2ed.

function [s, y] = Falsi(f, a, b, tol, kmax)
% f is an inline function
ya = f(a);	yb = f(b);
if sign(ya) == sign(yb)
	error('function has same sign at end points')
end
disp('	step	a	b	s	y	')
for k = 1:kmax
	s = b- yb*(b-a)/(yb-ya);
	y = f(s);
	iter = k;
	out = [ iter, a, b, s, y ];
	disp( out	)
	if abs(y)< tol
		disp('regula falsi has converged'); break;
	end
	if sign(y) ~= sign(ya)
		b = s;
		yb = y;
	else
		a = s;
		ya = y;
	end
	if (iter >= kmax)
		disp('zero not found to desired tolerance')
	end
end