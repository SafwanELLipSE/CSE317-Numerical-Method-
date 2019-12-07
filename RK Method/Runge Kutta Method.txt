function RungeKuttaMethod
    %example of Runge-Kutta method of order 4.
    %y' = y - t^2 + 1. 
    a = 0;                  %time interval we are solving over
    b = 4;
    N = 1000;               %number of steps
    t = zeros(1, N);        %preallocate memory for these variables - this is preferred but is not required to work%
    w = zeros(1, N);
    w(1) = 0.5;             %initial value of w.
    h = (b - a)/N;          %step size
    t(1) = a;               %initial vlaue for time.

    F =  @(t, y) y - t^2 + 1;   %thing we are solving.

        for i = 1:(N-1)

        K1 = h*(F(t(i), w(i)));                         %this is the RungKutta Method.
        K2 = h*(F(t(i) + 0.5*h, w(i) + 0.5*K1));
        K3 = h*(F(t(i) + 0.5*h, w(i) + 0.5*K2));
        K4 = h*(F(t(i) + h, w(i) + K3));
        w(i+1) = w(i) + (K1 + 2*K2 + 2*K3 + K4)/6;      
        t(i+1) = a + i*h;
        end

    %Fa = (t+1).^2 -0.5*exp(t); %actualy solution we ca use to compare between both methods%
    plot(t, w)
    %hold on                %use these 3 lines to see both solutions plotted on
    %plot(t, Fa, 'r')       %same graph for comparison.
    %hold off

end
