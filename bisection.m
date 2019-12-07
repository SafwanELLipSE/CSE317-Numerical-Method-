y = @(x) 2*x^2 -  5*x + 3;
x1 = input('Enter the value of x1: ');
x2 = input('Enter the value of x2: ');
if y(x1)*y(x2) > 0
	fprintf('No roots exist within the given interval \n');
	return
end

if y(x1) == 0
	fprintf('x1 is not of the roots\n')
	return
elseif y(x2) == 0
	fprintf('x2 is not of the roots\n')
	return
end

for i = 1: 100
	xh = (x1 + x2) / 2; %bisection
	
	if y(x1)*y(xh) < 0
		x2 = xh;
	else
		x1 = xh;
	end
	
	if abs(y(x1)) < 1.0E-6
		break
	end
end
fprintf('The root: %f\nThe number of bisections: %d\n',x1,i)
