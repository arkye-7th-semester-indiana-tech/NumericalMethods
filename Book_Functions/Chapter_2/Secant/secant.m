%	Page 59 - Chapter 2: Functions of One Variable
%	Section 2.2: Secant-Type Methods
%	From the book: Applied Numerical Analysis Using MATLAB 2ed.

function [xx, yy] = Secant(f, a, b, tol, kmax)
% f is an inline function
y(1) = f(a);
y(2) = f(b);
x(1) = a;
x(2) = b;
Dx(1) = 0;
Dx(2) = 0;
disp('	step	x(k-1)	x(k)	x(k+1)	y(k+1)	Dx(k+1)')
for k = 2:kmax
	x(k+1) = x(k) - y(k)*(x(k)-x(k-1))/(y(k)-y(k-1));
	y(k+1) = f(x(k+1));
	Dx(k+1)= x(k+1)-x(k);
	iter = k-1;
	out = [ iter, x(k-1), x(k), x(k+1), y(k+1), Dx(k+1) ];
	disp ( out	)
	xx = x(k+1);
	yy = y(k+1);
	if abs(y(k+1))< tol
		disp('secant method has converged'); break;
	end
	if (iter >= kmax)
		disp('zero not found to desired tolerance')
	end
end