

clear all; close all; clc;


#a) Calculate the carrying capacity
K = 27*2727

#b)
P0 = 900
r = 0.24

for i = 1:12
  P(1) = P0;
  P(i+1) = P(i) + r*P(i)*(1-(P(i)/K));
  t(1) = 0;

  t(i+1) = i;
end

plot(t,P,'r-')
xlabel("Time in months")
ylabel("Population")
title("Deer population variation in the streets of Trincomalee with time")
hold on;

#c
h = 0.4
for i = 1:12
  P1(1) = P0;
  t(1) = 0;
  P1(i+1) = P1(i) + r*P1(i)*(1-(P1(i)/K)) - h*P1(i);
  t(i+1) = i;
end

plot(t,P1,'b-')
hold on;

#d
for i = 1:12
  P3(1) = P1(3); # at the beginning of the hunting season
  t(1) = 0;
  P3(i+1) = P3(i) + r*P3(i)*(1-(P3(i)/K))
  t(i+1) = i;
end

plot(t,P3,'g-');

# Based on the values plotted in the command window
# Population by end of August 2024 =
# 5 th Data point for P3 ( starting from end of April)
# Answer = 1477.79
