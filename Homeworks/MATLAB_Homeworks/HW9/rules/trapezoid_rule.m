function I = Trap( f, a, b, n)
%	find integral of function f on the interval [a, b]
%	using the trapezoid rule with n subintervals
%	f must be defined as an inline function
h = (b-a)/n;
S = f(a);
for i = 1 : n-1
	x(i) = a + h*i;
	S = S + 2*f(x(i));
end
S = S + f( b);
I = h*S/2;
%	Credits:
%		Applied Numerical Analysis Using MATLAB - Laurence V. Fausett (2ed)
%		Page 418
%	Obs: A Little modification was made in this function,
%		Added semicolon (;) at the end of each command line
