% 10 data points of a;
a = [.25 1 1.5 2 2.4 5];
% 10 data points of b;
b = [23.1 1.68 1 .84 .826 1.2576];

% First Process;
plot(a,b);
% By using plotfit we can get the value of A and B;
polyfit(a,b,4)
A = 1.6803; 
B = -17.1522;
C = 58.3927;
D = -80.9324; 
E = 39.9168;
% c = Ax^4 + Bx^3 + Cx^2 + Dx + E;
c = A*a.^4 + B*a.^3 + C*a.^2 + D*a + E;
plot(a,c)
