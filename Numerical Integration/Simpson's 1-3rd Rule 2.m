%% Simpsom's 1/3 Method For Numerical Integration
clc; %% clear comment window
clear all; %% clear old data history 
close all; %% close old data files


%% Integration sin(x) from 0 to pi 
%% funcation wanted to be integrated
f=@(x) sin(x);
%% Starting range (value of a)
a = 0;
%% Ending range (value of b)
b = pi;
%% number of steps
n = 100;
%% step sizes (the value of h)
dx = (b-a)/n;

Sl = f(a);
Sn = f(b);
%%  sum of even intervals
%% initial value zero
Sev = 0; 
for i = a+2*dx:2*dx:b-2*dx
      Sev = Sev + f(i);
end
%% sum of odd intervals
 %% initial value zero
Sod = 0; 
for i = a+3*dx:2*dx:b-dx
     Sod = Sod +f(i);
end

I = (dx/3)*(Sl + 4*Sev + 2*Sod + Sn)