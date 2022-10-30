
clc 
Cin=[0 0 8 6 4 5 6 3 1 0 0]; % Input signal to the reactor
tin=[0 1 2 3 4 5 6 7 8 9 10]; % Time vector associated to Cin
Er=[0 0.05 0.5 0.35 0.1 0]; % RTD distribution in the reactor
tr=[0 1 2 3 4 5]; % Time vector associated to E
inct=tr(2)-tr(1); % Time increment for Cin and E
m=length(Er); % Dimension of vector E
n=length(Cin); % Dimension of vector Cin
A=zeros(m,n); % Initializing the matrix
for i=1:n
A(i:(m-1)+i,i)=Er % Construction of the matrix convolution
end
Cout=(A*Cin')'; % Calculation of the convoluted curve
% Calculation of time vector for the convoluted curve:
t0convolution=(tin(1)+tr(1)); % Initial time for the convoluted curve
tendconvolution=(tin(n)+tr(m)); % Final time for the convoluted curve
tconvolution=t0convolution:inct:tendconvolution;
% Time vector for the convoluted curve
figure(1)
plot(tin,Cin)
legend('Cin')
xlabel('time(s)')
ylabel ('Cin')
figure(2)
plot(tr,Er)
legend('Er')
xlabel('time(s)')
ylabel ('Er')
figure(3)
plot(tconvolution,Cout)
legend('Cout')
xlabel('time(s)')
ylabel ('Cout')