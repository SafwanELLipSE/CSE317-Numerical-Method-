clc, clear all
%Integration with the simpson rule function: y =x.^3;
x1 = simpson2(0,2,.01,'fun_for_intergration')
%Integration with the simpson rule function: y = exp(-x.^2);
x2 = simpson2(0,2,0.2,'fun_for_intergration')
%Integration with the build in simspon rule function: y = (x.^3);
z = quad('fun_for_intergration',0,2)
%Integration with the build in simspon rule function: y = exp(-x.^2);
z = quad('fun_for_intergration2',0.5,1.5)

