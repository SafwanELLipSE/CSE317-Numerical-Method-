%% Simpsom's 1/3 Method For Numerical Integration.
clc; %% clear comment window.
clear all; %% clear old data history. 
close all; %% close old data files.

%% Integration sin(x) from 0 to pi.
%% Starting range (value of a).
a = 0;
%% Ending range (value of b).
b = pi;
%% number of steps.
n = 100;
%% step sizes (the value of h).
dx = (b-a)/n;
i = 0; %% An index starts drom 1; 

for x = a:dx:b
   i = i + 1;
   f(i) = sin(x); %%Function which we want to be integrated.
end

s1 = f(1);
sn = f(n);
s2 = 0;
for i = 1:3:n-2
       s2 = s2 + f(i);
end

s3 = 0;
for i = 2:3:n-1
       s3 = s3 + f(i);
end

s4 = 0;
for i = 3:3:n-3
       s4 = s4 + f(i);
end

I = (3*dx/8)*(s1 + 3*s2 + 3*s3 + 2*s4 + sn)
