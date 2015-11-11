function I = Simp( f, a, b, n)
%	find integral of function f on the interval [a, b]
%	using Simpson's rule with n subintervals (n must be even)
%	f may be given as inline function or m-file function
h = (b-a)/n;
S = feval(f, a);
for i = 1 : 2 : n-1
	x(i) = a + h*i;
	S = S + 4*feval(f, x(i));
end
for i = 2 : 2 : n-2
	x(i) = a + h*i;
	S = S + 2*feval(f, x(i));
end

S = S + feval(f, b);
I = h*S/3;
%	Credits:
%		Applied Numerical Analysis Using MATLAB - Laurence V. Fausett (2ed)
%		Page 421
%	Obs: A Little modification was made in this function,
%		Added semicolon (;) at the end of the result line;
