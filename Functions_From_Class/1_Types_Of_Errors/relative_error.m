function relativeError = relativeerror(exact, approximation)
	relativeError = 0;
	if exact not(0)
		run absolute_error;
		relativeError = (absoluteerror(exact,approximation)/abs(exact));
	else
		errorMessage = 'The Exact Value must not be 0!';
		error(errorMessage);
	end