%% 10 data points of a;
a = [166 195 200 260 265 335 370 450 517 552];
%% 10 data points of b;
b = [54 82 72 72 90 124 94 118 152 132];

% First Process;
plot(a,b);
% By using plotfit we can get the value of A and B;
polyfit(a,b,1)
A = 0.2048;   
B = 31.2181;
% c = Ax + B;
c = A*a + B;
plot(a,c)

% Second Process;
n = length(a);
sa = 0;
sb = 0;
sab = 0;
sa2 = 0;

for i=1, n;
    sa = sa + a(i);
    sb = sb + b(i);
    sab = sab + a(i)*b(i);
    sa2 = sa2 + a(i)^2;
end