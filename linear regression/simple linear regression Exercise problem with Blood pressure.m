% 10 data points of a;
w = [44 61 81 113 131];
% 10 data points of b;
p = [91 98 103 110 112];

% First Process;
plot(w,p);
% By using plotfit we can get the value of A and B;
polyfit(w,p,1)
A = 0.2366;   
B = 82.4482;
% c = Ax + B;
c = A*a + B;
plot(a,c)
