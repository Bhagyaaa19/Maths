###Question1
### a)
##K = 100*10*20
##
### b)
##
##b = 0.2
##P0 = 150
##for i= 1:200
##
##  P(1) = P0
##  t(1) = 0
##  P(i+1) = P(i) + b*(1-(P(i)/K))*P(i)
##  t(i+1) = i
##end
##
##plot(t,P,'b-') # answer is 76
##
##hold on;
##
###c)
### use a different P1 variable here
##b = 0.2
##P0 = 150
##d = 0.01
##for i= 1:200
##
##  P1(1) = P0
##  t(1) = 0
##  P1(i+1) = P1(i) + b*P1(i)*(1- P1(i)/K)- d *P1(i)
##  t(i+1) = i
##end
##
##plot(t,P1,'r-')
### take the answer as 79 months even if the highest carrying capacity isnt reached
#######################################################################
##
##
#a) Calculate the carrying capacity

K = 27*2727
P0 = 900
r = 0.24

for i = 1:12
  P(1) = P0
  P(i+1) = P(i) + r*P(i)*(1-(P(i)/K));
  t(1) = 0
  t(i+1) = i
end

plot ( t, P,'b-')
hold on
h = 0.4
for i = 1:12
  P1(1) = P0
  P1(i+1) = P1(i) + r*P1(i)*(1-(P1(i)/K)) - h* P1(i);
  t(1) = 0
  t(i+1) = i
end

plot ( t, P1,'r-')


