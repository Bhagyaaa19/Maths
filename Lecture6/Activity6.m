# ===================================================================================================
# Practical sheet 6
# Question 1
K = 100 * 1.5 * 250 # carrying capacity
K = K/1000

#Question 3
# find what should be x and what should be y based on what we want to find out
#x = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24]
#x1 = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23]

#actual population
x = [0.3 0.36 0.44 0.54 0.66 0.8 0.98 1.18 1.44 1.74 2.11 2.54 3.06 3.67 4.39 5.23 6.19 7.29 8.55 9.94 11.47 13.12 14.87 16.7]

# change in the population
# calculating the change from the population
for i = 1:23
  y1(i) = x(i+1)-x(i);
end

# change in population ( Pn+1 - Pn) is y1
y1

# x values
for j = 1:23
  x1(j) = x(j).*(1-(x(j)./K))
end
x1

p = polyfit(x1,y1,1)

#Question5

Po = 300;
K = 37500;
r = 0.43
h = 127

% Initial conditions
#P(1) = Po;
#t(1) = 0;

# you get the P(i) you want using the same dataset

for i = 1:48
  P(1) = Po;
  t(1) = 0;
  P(i+1) = P(i) + r.*P(i).*(1-(P(i)./K))- h;
  t(i+1) = i;
end
P
P(42)
plot(t,P)
xlabel("Time")
ylabel("Population")

#Question6

#change Po and see
#change r and see
#change h and see




