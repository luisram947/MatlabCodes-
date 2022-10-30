%Solucion de ecuaciones lineales 
clc
clear
syms A B P Xp Zp Ip
 eq1= A+B==1000
 eq2=(1/3)*0.3*A+B*0.3-P*Xp==0
 eq3=0.65*A+B*0.65-P*Zp==0
 eq4=0.05*A+B*0.05-P*Ip==0
 eq5=0.5*(1/3)*A*(0.3)-P*(0.03)==0
 eq6= Xp+Zp+Ip+0.03==1
 R1=solve([eq1 eq2 eq3 eq4 eq5 eq6],[B A P Xp Zp Ip])
 %Solucion del Sistema de ecuaciones 
format shortG
 A1=R1.A
 B1=R1.B
 P1=R1.P
 Xp1=R1.Xp
 Zp1=R1.Zp
 Ip1=R1.Ip
%corrientes internas del sistema 
 F=B1+A1
 V=(2/3)*A1*(0.3)
 C=A1-V
 E=0.5*(1/3)*(0.3)*A1
 G=C+E