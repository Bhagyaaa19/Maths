clear all; close all; clc;

K = 1.5*100*250

x = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24]

#actual population
y = [0.3 0.36 0.44 0.54 0.66 0.8 0.98 1.18 1.44 1.74 2.11 2.54 3.06 3.67 4.39 5.23 6.19 7.29 8.55 9.94 11.47 13.12 14.87 16.7]

# change in the population
for i = 1:23
  y1(i) = y(i+1) - y(i)
  x1(i) = y(i)*(1-(y(i)/K))
end

p = polyfit(x1,y1,1)

# Question 4 CHeck how to do this
for i = 1:12*4
  x2(i) = i
end

y2= polyval(p,x2)

for i= 1:length(y2)
  y3(1) = 300
  t(1) = 0
  y3(i+1) = y2(i) + y3(i)
  t(i+1) = i
end

plot(t,y3,'b-');
hold on;

# question 5
Po = 300;
K = 37500;
# initially h was h = 0.42*P(i)
# now we changed into a constant number
for i = 1:48
  P(1) = Po
  t(1) = 0;
  P(i+1) = P(i)+0.43 * P(i)*(1-P(i)/K)- 127; # beyond 127, the graph disappears
  t(i+1) = i;
end
plot(t,P,'r')






