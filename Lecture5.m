#Lecture 4 - Acivity 1
clear all; close all; clc; # use these three commands when you start a new code

a0=0.1; # defining a0
b=-1 # defining b values
for i=1:50 # for arrays in octave, first element is 0
  an(1)=a0; # first value of an1 should be the initial ao value ( an is an array)
  an(i+1)=b^(i)*a0;
  n(1)=0;
  n(i+1)=i;
end
plot(n,an,'r-')

