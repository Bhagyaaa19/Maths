clear all; close all; clc;
##
### activity 04
##
##a0 = 100000;
##r = 0.05;
##b = (1+r);
##
##for i=1:20
##  an(1) = a0;
##  an(i+1) = b*an(i) - 4000;
##  n(1) = 0;
##  n(i+1) = i;
##end
##
##plot(n,an,'r-')

# ================================================================
# activity 05 ====================================================

a0 = 0.1;
b0 = 0.15;
r = -0.5;
b = (1+r);

for i = 1:15
  an(1) = a0;
  an(i+1) = b*an(i) + 0.1;
  bn(1) = b0;
  bn(i+1) = b*bn(i) + 0.15;
  n(1) = 0;
  n(i+1) = i;
end

plot(n,an,'b-',n,bn,'r-')



