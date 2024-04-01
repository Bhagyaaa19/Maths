clear all; close all; clc;
x = [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19]; #  the arrays should be of equal size
y = [3 4.5 5 6.5 7.9 9.8 13.3 15 14 15.6 18.9 18.5 20 21.5 25.1 28.5 29 27.5 29 32.5 ];

p = polyfit(x,y,1)
y1 = polyval(p,x)

plot(x,y,'r-',x,y1,'b-')
