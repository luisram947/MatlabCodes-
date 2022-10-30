%Gauss_Seidel_no_lineal 
clc
clear 
close all
a = 1.33                    %atm*lt2/(mol) 2 
b = 0.0366                  %lt/mol 
R = 0.08206                 %atm*lt/(mol*K) 
P = 50                      %atm
T = 173.15                  %K
V = R*T/P                   %lt (Valor inicial de V
tol =0.000001
for i=1:1:20
%Funcion a evalua f(x)=0
V1=(P/a)*(-V^3+V^2*(b*P+R*T)/P+(a*b/P))-V 
%Derivada de la funcion f(x)=0
dV=(P/a)*(-3*V^2+2*V*(b*P+R*T)/P)-1;
Vr(i)=V-(V1/dV)
V=Vr(i)
if V1/dV<tol
    break
end

end
p=[1 -(b*P+R*T)/P a/P (-a*b)/P]
roots(p)
n=1:1:i
plot(n,Vr)
xlabel('Time (s)')
ylabel('C_A at the exit (mol/m ̂ 3)')

