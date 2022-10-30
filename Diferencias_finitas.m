%Diferencias finitas 
clear 
%Valores de la temperatura en los bordes de la placa 
%condiciones de frontera 
Tc=0
Td=200
Ta=200
Tb=0
n=2 % numero de puntos en el centro de la malla hacia horizontal
m=2 %numero de puntos en el centro de la malla  hacia arriba 
for i=1:n+2
    T(i,1)=Tc;
    T(i,m+2)=Td 
end

for j=1:m+2
    T(1,j)=Ta
    T(n+2,j)=Tb 
end 

%Para los puntos centrales 
P=(Ta+Tb+Tc+Td)/4;

for i=2:n+1
    for j=2:m+1
        T(i,j)=P
    end
end  
%Para los puntos centrales por diferencias finitas 
for i=2:n+1
    for j=2:m+1
        T(i,j)=0.25*(T(i-1,j)+T(i+1,j)+T(i,j+1)+T(i,j-1))
    end
end  
 
 
