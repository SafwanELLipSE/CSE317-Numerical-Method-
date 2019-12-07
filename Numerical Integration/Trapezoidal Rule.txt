clc;clear;

a=0;
b=1;
n=100;
h=(b-a)/n;
sum=0;
f=@(x) x.*sin(x);
for i=1:1:n-1
    sum= sum + f(a+i*h);
end
result = h/2*(f(a)+f(b)+2*sum);
fprintf('%f',result);