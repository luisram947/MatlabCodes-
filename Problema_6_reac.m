%Problema_6_Reactores 
clear all
CA0=1; % Input concentration mol/m3
Qv0=100; % Volumetric flow rate m3/s
Vtotal=20; % m3 Total volume
k=17; % Reaction Kinetic constant , mol/m3⋅s
N=50; % Number of increment in x (position)
incV=Vtotal/(N-1); % Increment V
inct=0.95*incV/(Qv0+k*incV); % Must be lesser than defined in Eq 5.11.
V=0:incV:Vtotal; % Values of V that Will be used in the calculation
% Initial values:
tend=[];
CAend=[];
t=0;
CA=zeros(1,N);
CA(1)=CA0;
tfinal=1; % secs, Final time
A=1-k*inct-Qv0*inct/incV;
while t<tfinal
t=t+inct
CAn(1)=CA0; % Boundary condition for the first increment
CAn(N)=CA(N-1); % Boundary condition for the last increment.Eq. 5.13
for i=2:N-1
CAn(i)=A*CA(i)+(Qv0*inct/incV)*CA(i-1); % PDE given in Eq. 5.10
end
CA=CAn;
CAend=[CAend CA(end)]; % Saving the concentration at the exit
tend=[tend t]; % Saving the values of time used
plot(V,CA)
xlabel('Volume (m ̂ 3)')
ylabel('C_A (mol/m ̂ 3)')
drawnow
end
figure
plot(tend,CAend)
xlabel('Time (s)')
ylabel('C_A at the exit (mol/m ̂ 3)')