%%RK4 Fouth Order Runge Kutta
clc 
clear all  % clear all commends 
close all % close all files
%y' = 2xy ODE Equation we interest to solve 
f = @(x,y) 2*x*y;
fex = @(x) exp(x^2);

a = 0;
b = 1;
n = 8; % Number of Divisions
h = (b - a) / n; % step
y(1) = 1; % Initial Condition
i = 0;
for x = a:h:b
     i = i + 1;
     k1 = f(x,y(i));
     k2 = f(x+(h/2), y(i)+ (h/2)*k1);   
     k3 = f(x+(h/2), y(i)+ (h/2)*k2);
     k4 = f(x+h, y(i)+ h*k3);
     y(i + 1) = y(i) + (1/6)*h*(k1 + 2*k2 + 2*k3 + k4);
     % Exact Solution 
     FF(i) = fex(x);
     xx(i) = x %X History
     % Error Calculation
     Err(i) =  abs (FF(i) - y(i));

end

% Graph Plot of Data
plot(xx,y(1 : n+1),'o',xx,FF)
legend('RK4','Exact Solution')
grid on
xlabel('x')
ylabel('y')
title('RK4 VS Exact Solution')

%Error Graph Plot
figure
plot(xx,Err)
legend('Error Curve')
grid on
disp(['Max. Error Value=' num2str(Err(end))])

