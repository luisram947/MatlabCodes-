clc
%Pulso cuadrado de un trazador 

%Ecuacion que describe el sistema 
a=0.001
t0=1.3
n=4
Cin=1
t=[0 0.5 1 1.5 2 2.5]
C0 = exp(-(t -0.4)*20.005 )
figure(1)
plot(t,C0)
legend('C')
xlabel('time(s)')
ylabel ('C')