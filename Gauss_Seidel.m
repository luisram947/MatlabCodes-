%Gauss-Seidel
clc
clear 
close all
A=[2 1 1;1 2 1;1 1 2];
b=[4;4;4];
I=eye( length (A), length (A))
D=eye( length (A), length (A))
y0=[0;0;0]
tol=1E-6;
%Matriz D
for p=1:length(A)
    D(p,p)=A(p,p);
end
%Matriz B
B=zeros( length (A), length (A));
for j=2:length(A)
 for i=1:length(A)
     B(j,i)=A(j,i)/D(j,j);
     if i>=j
 B(j,i)=0;
     end 
end
end
%Matriz S
S=zeros( length (A), length (A));
for k=1:length(A)
 for l=2:length(A)
     S(k,l)=A(k,l)/D(k,k);
     if k>=l
     S(k,l)=0;
     end 
end
end
m=20;
C=-((I+B)^-1)*S;
R=norm(C)
e=((I+B)^-1)*(D^-1)*b;
%Gauss-Seidel
w=y0;
for h=1:m
ys=(-((I+B)^-1)*S*w)+((I+B)^-1)*(D^-1)*b;
w=ys;
end
%jacobi
%Convergencia para jacobi
w1=y0;
C1=-(B+S);
R1=norm(C1)
for h=1:m
ysj=-(B+S)*w1+(D^-1)*b;
w1=ysj;
end
fprintf('\n Para método Gauss-Seidel la solución es  %4.0f\n',h)

for i=1:length(b)
 fprintf(' ys(%1.0f)=%6.6f\n',i,ys(i))
end

for i=1:1
    if norm(ys-w)<tol
fprintf('\n el metodo converge   %4.0f\n',h)
    else
      fprintf('\n el metodo no converge   %4.0f\n',h)  
    end
end

fprintf('\n Para método Jacobi la solución es %4.0f\n',h)
for i=1:length(b)
 fprintf(' ys(%1.0f)=%6.6f\n',i,ysj(i))
end
for i=1:1
    if norm(ysj-w)<tol
fprintf('\n el metodo converge   %4.0f\n',h)
    else
      fprintf('\n el metodo no converge   %4.0f\n',h)  
    end
end



