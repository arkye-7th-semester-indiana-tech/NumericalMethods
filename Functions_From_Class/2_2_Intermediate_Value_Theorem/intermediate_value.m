function intermediatevalue(fx, a, b)
	x(1) = a;
	y(1) = feval(fx, x(1));
	x(2) = b;
	y(2) = feval(fx, x(2));

	isExistent = isexistent(y(1), y(2));

	if isExistent == 1
		disp('The function has at least one root!');
	else
		disp('There are no roots on this function!');
	end
end

function isExistent = isexistent(a, b)
	if a == 0 || b == 0
		isExistent = 1;
	else
		run is_positive
		isAPositive = ispositive(a);
		isBPositive = ispositive(b);

		if isAPositive == isBPositive
			isExistent = 0;
		else
			isExistent = 1;
		end
	end
end