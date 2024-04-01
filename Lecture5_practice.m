clear all; close all; clc;

#ao =0.1;
#b = 2;
#for i=1:50
#  an(1) = ao;
#  an(i+1)= b^(i)*ao;
#  n(1) = 0;
#  n(i+1)= i;
#end
#plot(n,an,'r-')

#{
# Activity 04
a0 = 80000;
b0 = 100000;
c0 = 60000;
b = 1.05;

for i = 1:20
  an(1) = a0;
  an(i+1) = b*an(i)-4000;
  bn(1) = b0;
  bn(i+1) = b*bn(i) - 4000;
  cn(1) = c0;
  cn(i+1) = b*cn(i) - 4000;
  n(1) = 0;
  n(i+1) = i;
end

plot(n,an,'r-',n,bn,'g-',n,cn,'b-')
#}

#Activity 05

a0 = 0.1;
b0 = 0.15;
b = 0.5


for i = 1:15
  an(1) = a0;
  an(i+1) = b*an(i)+0.1;
  bn(1) = b0;
  bn(i+1) = b*bn(i)+0.15
  n(1) = 0;
  n(i+1) = i;
end

plot(n,an,'r-',n,bn,'g-');
legend('Original Dosage (0.1 mg)', 'Increased Dosage (0.15 mg)');




