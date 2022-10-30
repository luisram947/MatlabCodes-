%Aproximacion polinomial segundo orden 
clc
clear
close all
n=6% Numero de coeficientes 
P=[499.2 640.0 635.2 736.0 688.0 483.2 800.0 571.2 528.0 540.8]% y
V=[80 40 80 40 31.72 88.28 60 60 60 60] %X1
T=[180 180 40 40 110 110 11.02 208.98 110 110]  %X2 ^(-1)
O=13%obsevaciones
%Definicion de 
X=zeros(length(P),n)
for i=1:n
    for j=1:length(P)
     X(j,i)=1
    if i==2
     X(j,i)=V(j)
    end
    if i==3
     X(j,i)=T(j)
    end
     if i==4
     X(j,i)=T(j)*V(j)
     end
      if i==5
     X(j,i)=V(j) ^2
      end
      if i==6
     X(j,i)=T(j) ^2
      end
    end
end
Xt=X'
    alfa=((Xt*X)^-1)*Xt*P'

M=O;
X1=linspace(min(V),max(V),M);
X2=linspace(min(T),max(T),M);
[x1,x2]=meshgrid(X1,X2);
y=alfa(1)+alfa(2).*x1+alfa(3).*x2+alfa(4).*x1.*x2+alfa(5).*x1.^2+alfa(6).*x2.^2;
yc=alfa(1)+alfa(2).*V+alfa(3).*T+alfa(4).*V.*T+alfa(5).*V.^2+alfa(6).*T.^2;
%Grafica comparativa
figure(1)
plot(yc,yc)
hold on
scatter(yc,P)
title('Viscosidad medida vs Viscosidad calculada')
xlabel('Viscosidad medida (p)')
ylabel('Viscosidad calculada (p)')
%Grafica 3D
figure(2)
mesh(x1,x2,y)
title('Modelo lineal de primer orden para la viscosidad')
xlabel('Velocidad (min^-^1)')
ylabel('Tiempo (min)')
zlabel('Viscosidad dinámica (p)')
