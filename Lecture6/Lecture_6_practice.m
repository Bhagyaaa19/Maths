clear all; close all; clc;
n = [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19]
n1 = [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18]
an= [10.3 17.2 27 45.3 80.2 125.3 176.2 255.6 330.8 390.4 440 520.4 560.4 600.5 610.8 614.5 618.3 619.5 620 621];

#plotting change in population in the same graph

# calculating the change in population
for i = 1:19
  an2(i) = an(i+1) - an(i)
end

# plotting the actual population vs days
plot(n,an,'g-');
hold on;
# plotting change in population vs days
plot(n1, an2,'b--');

# find b and write the logistic equation
# an+1 − an = b(c − an)an.
# y is the change = an2
# x is (c-an)an
c = 621;
for j= 1: (length(an)-1)
  x(j) = (c-an(j))*an(j);
end
p = polyfit(x, an2,1) # calculating the equation
# finding the b based on the m

#The function polyfit fits a polynomial of a specified degree to the given data
#points and returns the coefficients of the polynomial. The last argument, 1,
#specifies that a first-degree polynomial (a straight line) is being fitted.

#Therefore, p will be a vector containing the coefficients of the fitted line.
#In this case, it will be a two-element vector representing the slope and intercept
# of the line.

# predicting the population for the next 19 hours based on the refined model
# calculating the new y values for x values
an3 = polyval(p,n);

for k = 1:length(an3)
  an4(k) = an3(k) + an(k);
end
plot(n,an4,'or');





