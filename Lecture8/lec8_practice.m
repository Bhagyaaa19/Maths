clear all; close all; clc;

# initial population for Foxes
F0 = 110

# initial population for Rabbits
R0 = 900

#birth rate for foxes
b = 0.0001

# death rate for foxes
a = 0.88

#death rate of rabbits
c = 0.0003

# birth rate of rabbits
d = 1.039

# modelling the linear predator prey modelling
##for i = 1:100
##  Fn(1) = F0
##  Rn(1) = R0
##  Fn(i+1) = a*Fn(i) + b*Rn(i)
##  Rn(i+1) = -c*Fn(i) + d*Rn(i)
##  t(1) = 0
##  t(i+1) = i
##end
##
##plot(t,Rn,'b-',t,Fn,'r')

# interaction effect - non linear predator prey model
for i = 1:5
  Fn(1) = F0
  Rn(1) = R0
  Fn(i+1) = -a*Fn(i) + b*Rn(i)*Fn(i)
  Rn(i+1) = -c*Fn(i)*Rn(i) + d*Rn(i)
  t(1) = 0
  t(i+1) = i
end
plot(t,Rn,'b-',t,Fn,'r')

