##clear all; close all; clc;
### Sample Questions
### 14/2/2024
 K = 500*10

 # death rate
 d = 0.05
 # growth rate
 r = 0.5

 P0 = 800

## # Q2_b
##for i = 1:15
##  P1(1) = P0;
##  t(1) = 0;
##  P1(i+1) = P1(i) + r*P1(i)*(1-(P1(i)/K)) - d * P1(i);
##  t(i+1) = i;
##end
##
##plot(t,P1,'b-')
##hold on;
##
## # Q2_c
 d1 = 0.2
 r1 = 0.3

for i = 1:4
  P2(1) = P0;
  t1(1) = 0;
  P2(i+1) = P2(i) + r1.*P2(i).*(1-(P2(i)./K)) - d1 .* P2(i);
  t1(i+1) = i;
end

##t1
##P2
####plot(t1,P2,'g-')
####hold on;
### beginnign of new period - 924.78
##
## d2 = 0.1
## r2 = r1
##
#### P3(0) = P2(0)
#### P3(1) = P2(1)
#### P3(2) = P2(2)
#### P3(3) = P2(3)
##
##for i = 5:15
####  P2(3) = 924.78; # P2(3)
####  t1(3) = 2;
##  P2(i+1) = P2(i) + r2*P2(i)*(1-(P2(i)/K)) - d2 * P2(i)
##  t1(i+1) = i;
####  P3(0) = P2(0)
####  P3(1) = P2(1)
####  P3(2) = P2(2)
####  P3(3) = P2(3)
##end
##t1
##plot(t1,P2,'r-');

# Q_2_d===========================================


# initial population for Rabbits
R0 = 5
F0 = P2(4)

#birth rate for foxes
b4 = 0.4

# death rate for foxes
a = d2

#death rate of rabbits
c = 0.02

# birth rate of rabbits
d = 0.3

##for i = 1:100
##  F(1) = F0
##  R(1) = R0
##  t(1) = 0
##  F(i+1) = a*F(i)+b*R(i)
##  R(i+1) = -c*F(i)+d*R(i)
##  t(i+1) = i;
##end

# mapping the interaction effect

for i = 1:500
  F(1) = F0
  R(1) = R0
  t(1) = 0
  F(i+1) = -a*F(i)+b4*R(i)*F(i)
  R(i+1) = -c*F(i)*R(i)+d*R(i)
  t(i+1) = i;
end

plot(t,F,'r-')
hold on
plot(t,R,'b-')
##plot(F1,R1,'g-')


##plot(t,F,'r-')
##xlabel("Time")
##ylabel("Populations")
##title("Population Trajectory")
##hold on;
##plot(t,R,'b-')

# Plot of Foxes vs rabbits
##plot(F,R,'g-')
##xlabel("Fox population")
##ylabel("Rabbit population")
# we can get the initial value from this
# says that the fox population decreases with time
# the rabbit population decreases with the time


