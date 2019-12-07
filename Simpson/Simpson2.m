function y = Simpson2(lower_lim,upper_lim,incr,fun)
%Check that the provide increment has sense for our purpose;
if ((upper_lim - lower_lim)/incr -= floor(upper_lim - lower_lim)/incr)
   disp('Warning: Increament must didvide interval into equal Subintervals')
   disp('Please Change The increament')
   y = 'error';
   return
end
%Evaluate the function in the lower and upper limits;
y1 = feval(fun,lower_lim);
y2 = feval(fun,upper_lim);
% Lop for ecah Subintervals;
for i=1:(upper_lim - lower_lim)/incr - 0.5;
    %calcluate the function at each subinterval
    y feval(fun, lower_lim + i*incr); 
    % interval even or odd?
    if i/2 == floor(i/2)
        %Sum all even interval function value
        d = d + y;
        continue
    else
        %Sum all odd interval function value
        c = c + y;
        continue
    end
end
%calculation integral 
y =  incr/3 * (y1 + 4*c + 2*d + y2);
        
        