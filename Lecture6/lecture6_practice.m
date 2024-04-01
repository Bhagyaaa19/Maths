clear all; clc;
x = [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19];
x1 = [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 ];
n = [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19]

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
# ===================================================================================
#an+1 - an = b (c - an) an
c = 621

for i = 1:(length(y)-1)
  an2(i) = y(i+1) - y(i);
  x2(i) = (c-y(i))*y(i);
 end
p = polyfit(x2,an2,1)

an3 = polyval(p,n)

for i = 1:length(an3)
  an4(i) = an3(i) + y(i);
end
plot(n,an4,'g-');


