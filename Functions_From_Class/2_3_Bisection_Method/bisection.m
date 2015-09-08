function bisectionApproximation = bisection(f, a, b, n, tol)
	ya = f(a);
	yb = f(b);
	k = a:b;

	figure;
	plot(a:b, f(k));
	title('Bisection Approximation');
	xlabel('x');
	ylabel('f(x)');
	colorVec = hsv(n);
	grid on;
	printf('\t ITERAT \t VAL(A) \t VAL(B) \t BISECT \t RESULT \t BOUNDR \n');
	
	hold on;
	for i = 1:n
		bisection = (a+b)/2;
		fm = f(bisection);
		bound = (b-a)/2;

		printf('\t %6d \t %6.6f \t %6.6f \t %6.6f \t %6.6f \t %6.6f \n',
			i, a, b, bisection, fm, bound);
		
		if abs(fm) < tol
			p = plot(bisection, fm,'x','MarkerSize', 150,
				'MarkerEdgeColor', 'black');
			bisectionApproximation = bisection;
			disp('Bisection has converged');
			break;
		end

		if sign(fm) ~= sign(ya)
			b = bisection;
			yb = fm;
		else
			a = bisection;
			ya = fm;
		end

		p = plot(bisection, fm,'.','MarkerEdgeColor', colorVec(i,:));
		
		if(i >= n)
			p = plot(bisection, fm,'x','MarkerSize', 150,
				'MarkerEdgeColor', 'red');			
			bisectionApproximation = bisection;
			disp('Zero not found to desired tolerance');
		end
	end
	hold off;
end