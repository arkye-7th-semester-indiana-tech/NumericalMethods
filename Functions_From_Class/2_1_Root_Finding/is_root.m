function isRoot = isroot(fx, c)
	x(c) = c;
	y(c) = feval(fx, x(c));
	isRoot = y(c) == 0;