clear all
x = [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19]; #  the arrays should be of equal size
y = [3 4.5 5 6.5 7.9 9.8 13.3 15 14 15.6 18.9 18.5 20 21.5 25.1 28.5 29 27.5 29 32.5 ];
# function is f(x) = mx + b
p = polyfit(x, y,1) # 1 st degree polynomial
y1 = polyval(p,x); # y1 = the function we need to fit the value, p = fitted function p for the value x

figure 1
plot(x,y1)
hold on # dont delete the plot, with this on, plot another figure in the same plot
plot(x, y, 'or')
title("The plot of linear fit of f(x)= 1.5568x + 2.4657")
xlabel("x values")
ylabel("y values")

figure 2
plot(x,y1,x,y,'or')
