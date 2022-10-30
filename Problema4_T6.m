%Problema 4 
clc
clear 
close all 
a=100
b=5
g=1.4939
x0=1
cont=1
for d=0.4:0.05:0.8
f= @(x)(g*a*exp(-b/x))/(1+(a*exp(b/x)))-(1+d)*x+1
x2(cont)=fzero(f,x0)
x1(cont)=-1/(-1-(a*exp(-b/x2(cont))))
cont=cont+1
end
n=0.4:0.05:0.8
figure(1)
plot(n,x2)
figure(2)
plot(n,x1)

