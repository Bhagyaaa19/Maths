clear all % Clear all existing variables from memory

% Define the x and y data points
x = [5 10 15 20 25 30 35 40 45 50]; #  the arrays should be of equal size
y = [4 12 15 25 32 28 37 35 38 39 ];
# function is y = mx + c

#Return the coefficients of a polynomial p(x) of degree n that minimizes the
#least-squares-error of the fit to the points


p = polyfit(x, y,1); # x values, y values, 1 - 1 st degree polynomial
#m = p(1); % slope
#c = p(2); % y-intercept

% Evaluate the fitted polynomial at the given x values
% polyval function computes the corresponding y values for the fitted polynomial

% fitted y values based on the polynomial fit p
y1 = polyval(p,x); # y1 = the function we need to fit the value, p = fitted function p for the value x
p2 = polyfit(x, y,3) # fitting the same thing to degree 2
y_2 = polyval(p2,x)

###figure 1
##plot(x,y,'r-') # plots the set of random numbers
##hold on # dont delete the plot, with this on, plot another figure in the same plot
##plot(x,y1,'b-') # plot the above random values again fitted into a straight line

#figure 2
plot(x,y1,'g-',x,y_2,'b-',x,y,'r-') # a diifferent method to do the above| or means circles with red color

