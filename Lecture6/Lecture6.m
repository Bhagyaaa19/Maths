clear all; clc;
x = [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19];
x1 = [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 ];
# actual population
y= [10.3 17.2 27 45.3 80.2 125.3 176.2 255.6 330.8 390.4 440 520.4 560.4 600.5 610.8 614.5 618.3 619.5 620 621];
y1= [6.9 9.8 18.3 34.9 45.1 50.9 79.4]; # change in population upto 7 data points

# calculating the change from the population
for i = 1:19
  y1(i) = y(i+1) - y(i);
end
y1
plot(x,y,'b-');
hold on;
plot(x1,y1,'r-');

xlabel('Days')
ylabel('Population growth')
title('Plotting the growth of bacterial population with days')
# plot days vs actual population
# then plot the change in population in the same graph
# have to plot two x arrays as the number of data points is different

### ===================================================================================================
### Practical sheet 6
### Question 1
##K = 100 * 1.5 * 250 # carrying capacity
##
###Question 3
##x = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24]
##y = [0.3 0.36 0.44 0.54 0.66 0.8 0.98 1.18 1.44 1.74 2.11 2.54 3.06 3.67 4.39 5.23 6.19 7.29 8.55 9.94 11.47 13.12 14.87 16.7]
##p = polyfit(x,y,1)
##
##y1=polyval(p,x)
##
###The polyval function in Octave is used to evaluate a polynomial at specific values.
###When called with the coefficients p of a polynomial and an array of values x,
###polyval computes the polynomial's values at each point in the array x.
##
##plot(x,y1,x,y,'or')

