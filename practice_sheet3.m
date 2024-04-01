# Transposing

clear all; close all; clc;
a = 35
b = [ 1 2 3 4]
b

b = b' # getting the transpose
b

#The apostrophe ' here is the transpose operator. This line transposes the vector
# b, swapping its rows and columns. Since b was initially a row vector, after
#transposing, it becomes a column vector. So, b now becomes a column vector with
#elements 1, 2, 3, and 4 in separate rows.

 xx = 0:.1:2
##This line creates a row vector xx starting from 0, incrementing by 0.1, and
## ending at 2. The syntax start:increment:end is used to create a vector with
## equally spaced elements.

yy = linspace(0,3,13)
#This line generates a row vector yy containing 13 equally spaced points between
 #0 and 3 (inclusive)

 # making a matrix manually
 A = [1 2 3 ; 4 5 6]

 % Create a 3x3 identity matrix
 C = eye(3)
##An identity matrix is a square matrix in which all the elements of principal
##diagonals are one, and all other elements are zeros.


 % Create a 4x4 matrix filled with ones
 D = ones(4)

 E = zeros(5)

 % Create a 2x3 matrix with random values from a uniform distribution between
# 0 and 1
F = randn(2,3)

% Create a 5x5 matrix with random values from a normal distribution (mean 0, variance 1)
G = randn(5)

% Generate a 5x5 Hilbert matrix
H = hilb(5)

%  generates a pascal matrix
P = pascal(4)

#Commands for other speciality matrices include: gallery, hadamard, hankel, invhilb,
#magic, rosser, toeplitz, vander, wilkinson.

# Learn matrix multiplication
# for matrix multiplication the number of cols in 1 st matrix should be == the to
# number of rows in the second one
B = A'

A*C #Will not work, C is 3 by 3 and A is 2 by 3.

# C*A
x = P\b # Solves P/b, number of cols in P = number of rows in b
P*x # .Checks the previous command.


# Some specialty commands ------------------

[m n] = size(A) # rows, columns

P = pascal(5)
p = diag(P) # returns the diagonal of P

flipud(A) #  flip an array or a matrix vertically (upside down)
##Original A
##A =
##   1   2   3
##   4   5   6

##ans =
##
##   4   5   6
##   1   2   3

fliplr(A)
#function is used to flip an array or a matrix horizontally (left to right)
##ans =
##
##   3   2   1
##   6   5   4

v = randn(10,1), a = abs(v)
##generates a column vector v of size 10x1 containing random numbers drawn from a
##standard normal distribution (mean = 0, variance = 1).
##
##abs(v) calculates the absolute values of each element in the vector v and stores
## the result in the variable a.

s = sort(v) % Sort the elements of v in ascending order
m = max(v)% Find the maximum value among the elements of v
# sorted matrix and maximum value of v

# Element-wise Operations---------------------------------------------
A.*A
% Gives square of all the elements in A.

A.^2
% Also gives the square of all the elements in A.

 A = [1 2 3 ; 4 5 6 ; 7 8 9]
A.*C
% Gives element-wise multiplication of C and A

b = rand(5)
P./b
% Divide each element in P by b

