%Tarea 4 reactores 
% DIFFERENTIAL EQUATION IN PARTIAL DERIVATIVES
% METHOD OF FINITE DIFFERENCES "EXPLICIT"
% "FLOW + DISPERSION IN A PIPE"
close
clc
M = 0.01;
L = 1;
N = 100; % Number of values of x to make the integration in x
incx = L / (N-1);
inct = 0.9 / (2 * M / incx^(2-1) / incx); %PONER AQUI LO QUE SEA EXPLICANDO
C (1) = exp (0);
C (2: N) = 0;
x = 0: incx: L;
r = M * inct / incx^2;
t = 0;
while t <1
t = t + inct;
Cnnew (1) = exp (- (t-0.4)^2 / 0.005);
Cnnew (N) = C(N-1); % Implies that dC / dx = 0 in i = N
 for i = 2: N-1
 Cnnew (i) = r*C(i + 1) + (1 + inct / incx-2*r)*C(i)+(- inct / incx + r)*C(i-1);
 end
C = Cnnew
plot (x, C)
axis ([0 0.1 0 1])
 drawnow
  xlabel('x')
 ylabel('C')
end
C0 = exp (−(t − 0.4)20.005 )
