#pkg load symbolic  % Load the symbolic package

#syms x;  % Define symbolic variable


#x = 25
#pretty(ans)

% comment
# comment

##f = x * sin(x)
##f1 = diff(f)
##f2 = diff(f,2)
#F = int(f)

#disp(F);  % Display the result

#i = int(f,0,pi)

# basic commands using arrays

x = -2:.1:2

f = inline('x.^3 - 2*x','x') # defining function
y = f(x) # applying function on above array
plot(x,y,'r-')

x1 = -2:0.05:2;
y1 = x1
z = sin(x'*y);
mesh(z)

A = [1 2 3; 4 5 6; 7 8 10]
C = [1 2; 3 4;5 6]
A*C

b = [ 1 2 3]',A\b




