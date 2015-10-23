%	Page 70 - Chapter 2: Functions of One Variable
%	Section 2.3: Newton's Method
%	From the book: Applied Numerical Analysis Using MATLAB 2ed.

function [x, y] = Newton_d(f, df, x0, tol, kmax)
x(1) = x0;	y(1) = f(x(1));	dy(1) = df(x(1)); C(1) = 0;
disp('		step	x(k)	y(k)	Dx	C')
for k = 1 : kmax
	x(k+1) = x(k) - 2*y(k) /dy(k);	y(k+1) = f(x(k+1));
	dy(k+1) = df(x(k+1));			Dx(k) = x(k+1) - x(k);
	if k > 1,	C(k) = Dx(k)/Dx(k-1)^2;	end
	if (abs(Dx(k)) < tol),	disp('Newton method converged'); break; end;
	iter = k-1; out = [ iter	x(k)	y(k)	Dx(k)	C(k) ];	disp(out)
	if (iter >= kmax+1),	disp('zero not found to desired tolerance'), end
end