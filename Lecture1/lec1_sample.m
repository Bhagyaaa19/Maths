# load the package
pkg load symbolic
# define variable first
syms x
solve ( 2* x - 4 ==y)

# solving for x when there are other variables
syms a b c x
solve( a*x^2+2*a*b + c ==0, x)

# for two variables
syms x y
sol = solve ( 2*x - 4 == 8 , x - y == 2)
sol.x
sol.y

syms a b c
sol1 = solve ( 3*a + 2*b + c == 1, 2*a - 5*b + 4*c ==5, 4*a + b -3 *c ==10)
sol1.a
sol1.b
sol1.c

# defining a function with a variable
#define the variable x first
syms x
#define the function first
f = sin(x)
# define another function for the differentiation function
f1 = diff(f)
# to get the second derivative
f2 = diff(f,2)

#Example - Finding the first and the seond derivative of f*sin(x)
syms x
f = sin(x)
f1 = f * sin(x)
der1 = diff(f1)
der2 = diff(f1,2)

# to get the integration
f = x*sin(x)
i = int(f)

# to give the limiuts of integration
# comma 0 means tends to zero
limit ( f,0)

limit(log(cos(x)) / x ^2,0)

# tending to inifnity
limit(log(x)^2/x,inf)

#plotting a graph using the default interval
# change different f s as required here
f = sin(x)
ezplot(f)

#plot the graph from 0 to 4pi
ezplot(f,[0,4*pi])
title("My first plot")
xlabel("x values")
ylabel("sin(x) values")
# add axis labels etc
# if we define a new f, the previous x disappears in the command line, but they can be stored in the editor
# in editor we save the file and run

# change the size and the color of the plot
# give a design to the plot
