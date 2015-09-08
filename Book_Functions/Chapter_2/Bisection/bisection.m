%	Page 52 - Chapter 2: Functions of One Variable
%	Section 2.1: Bisection Method
%	From the book: Applied Numerical Analysis Using MATLAB 2ed.

f = inline('x.^3-3*x.^2+1') % bisection method for example 2.2
a = 0;	b = 1;	kmax = 6;	tol = 0.00001;
ya = f(a);	yb = f(b);
if sign(ya) == sign(yb), error('function has same sign at end points'), end
disp('	step	a	b	m	ym	bound')
for k = 1:kmax
	m = (a+b)/2;	ym = f(m);	iter = k;	bound = (b-a)/2;
	out = [ iter, a, b, m, ym, bound ]; disp( out	)
	if abs(ym)< tol, disp('bisection has converged'); break; end
	if sign(ym) ~= sign(ya)
		b = m;	yb = ym;
	else
		a = m;	ya = ym;
	end
	if (iter >= kmax), disp('zero not found to desired tolerance'), end
end