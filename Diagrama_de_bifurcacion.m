%Diagrama de bifurcacion Problema 2
clc
clear
close all
%Variando u
w=5
r=20
cont=1
x0=1
for u=-r:1:r
f=@(x) w+u*x-x^3
y(cont)=fzero(f,x0)
cont=cont+1
end 
n=-r:1:r
cont1=1
for w=-r:1:r
u=1
f=@(x) w+u*x-x^3
z(cont1)=fzero(f,x0)
cont1=cont1+1
end 
for i=-r:1:r
    u=i
    cont2=1
    for j=-r:1:r
        w=j
        f=@(x) w+u*x-x^3
        h(cont2)=fzero(f,x0)
        l(cont2)=w
        cont2=cont2+1
    end
   p=linspace(u,u,length(h))
   hold on
   figure(3)
   plot3(l,p,h,'b.')
 
end
hold off
figure(1)
plot(n,y,'k.')
figure(2)
plot(n,z,'k.')


