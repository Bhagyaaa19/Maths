# Activity 04
clear ll; close all; clc; # use these three commands when you start a new code

a0=80000
b0=60000
c0=100000
b=1.05
for i=1:20 # for arrays in octave, first element is 0
  an(1)=a0; # first value of an1 should be the initial ao value ( an is an array)
  an(i+1)=b*an(i)-4000;
  bn(1)=b0;
  bn(i+1)=b*bn(i)-4000;
  cn(1)=c0;
  cn(i+1)=b*cn(i)-4000;

  n(1)=0;
  n(i+1)=i;
end
plot(n,an,'r-',n,bn,'g-',n,cn)
