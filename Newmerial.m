y = exp(-x.^2);

n = 10;
a = -2;
b = 2;
h = (b-a)/n;

sum = 0;

for i=0:n
    if i ~= 0 | i ~= n
       sum = sum + 2*exp(-(a + i*h).^2)
    else
       sum = sum + exp(-(a + i*h).^2)
    end
end

sum = (x(2)-x(1))*(.5)*sum