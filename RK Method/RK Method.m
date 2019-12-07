syms f(x,y) 
n = 30;
a = 3;
b = 6;
h = (b - a) / n;
f(x,y) = y^2 + x^2 + 1;
t(1) = 1;
w(1) = 1;

for i = 2:n
    p = f(t(i-1),w(i-1));
    q = f(t(i-1) + h/2,w(i-1)+ h/2*p);
    r = f(t(i-1) + h/2,w(i-1) + h/2*q);
    s = f(t(i-1) + h,w(i-1) + h*r);
    w(i) = w(i-1) + h*(p + (2*q)+ (2*r) + s)/6;
    t(i) = t(i-1) + h;
end
t
w
plot(t,w)