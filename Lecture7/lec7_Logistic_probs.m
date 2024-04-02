# Practical 7
#31/1/2024
# Practical Problems – Logistic Growth Model

clear all; close all; clc;

# Question 1 ====================================================================

# maximum possible population
capacity = 1000;
per_m2 =  20;
K = 1000 *20;

# b)
P0 = 150;
r = 0.2

% Initialize arrays outside the loop
P = zeros(1, 100);
t = zeros(1, 100);

# answer is 76
for i = 1:200
  P(1) = P0;
  t(1) = 0;
  P(i+1) = P(i) + r*P(i)*(1-(P(i)/K));
  t(i+1) = i;
end

plot(t,P,'r-');
hold on;

#c)

d = 0.01 # death rate

for i = 1:200
  P1(1) = P0;
  t(1) = 0;
  P1(i+1) = P1(i) + r*P1(i)*(1-(P1(i)/K)) - d * P1(i)
  t(i+1) = i;
end

plot(t,P1,'b-');

# take the answer as 79 months even if the highest carrying capacity isnt reached

