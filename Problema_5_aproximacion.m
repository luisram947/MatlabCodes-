%Problema 5
clc
clear
close all
n=3%numero de coeficientes 
O=50
X1=[0:1/O:1]
a=length(X1)
for i=0:1:a
f(i+1)=sin((i/O)*pi)
X1(i+1)=(i/O)
end
X=zeros(length(f),n)
for z=0:1:a
X(z+1,:)=[1 (z/O) (z/O)^2 ];
end
Xt=X'
alfa=((Xt*X)^-1)*Xt*f'
W=alfa.*Xt
for k=1:length(W);
Y(k)=0
 for z=1:n
 Y(k)=Y(k)+W(z,k);
 end 
end
plot(X1,f,X1,Y)
xlabel('x')
ylabel('Yp , F(x)')
legend('f(x) = sin(\pix)','Y = \alpha + \alpha1X+ \alpha2X^2','Location','southwest')
title('Sen(x\pi) y polinomio cuadrado ')
