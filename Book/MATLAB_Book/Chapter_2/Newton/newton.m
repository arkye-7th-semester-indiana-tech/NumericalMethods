%	Page 66 - Chapter 2: Functions of One Variable
%	Section 2.3: Newton's Method
%	From the book: Applied Numerical Analysis Using MATLAB 2ed.

function [x, y] = Newton(fun, funpr, x1, tol, kmax)
% Input:
%	fun		function (inline function or m-file function)
%	funpr	derivative function (inline or m-file)
%	x1		starting estimate
%	tol		allowable tolerance in computed zero
%	kmax	maximum number of iterations
% Output:
%	x		(row) vector of approximations to zero
%	y		(row) vector fun(x)
x(1) = x1;
y(1) = feval(fun, x(1));
ypr(1) = feval(funpr, x(1));
for k = 2 : kmax
	x(k) = x(k-1)-y(k-1)/ypr(k-1);
	y(k) = feval(fun, x(k));
	if abs(x(k)-x(k-1)) < tol
		disp('Newton method converged'); break;
	end
	ypr(k) = feval(funpr, x(k));
	iter = k;
end
if (iter >= kmax)
	disp('zero not found to desired tolerance');
end
n = length(x);
k = 1:n;
out = [k'	x'	y'];
disp('			step	x	y')
disp(out)