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

##for i = 1:100
##  F(1) = F0
##  R(1) = R0
##  t(1) = 0
##  F(i+1) = a*F(i)+b*R(i)
##  R(i+1) = -c*F(i)+d*R(i)
##  t(i+1) = i;
##end

# mapping the interaction effect

for i = 1:5
  F(1) = F0
  R(1) = R0
  t(1) = 0
  F(i+1) = -a*F(i)+b*R(i)*F(i)
  R(i+1) = -c*F(i)*R(i)+d*R(i)
  t(i+1) = i;
end

##plot(t,F,'r-')
##hold on
##plot(t,R,'b-')
##hold on
#plot(t,F,'b-',t,R,'g-')


plot(t,F,'r-')
xlabel("Time")
ylabel("Populations")
title("Population Trajectory")
hold on;
plot(t,R,'b-')

# Plot of Foxes vs rabbits
#plot(F,R,'g-')
##xlabel("Fox population")
##ylabel("Rabbit population")
# we can get the initial value from this
# says that the fox population decreases with time
# the rabbit population increases with the time


