%Tarea_2_Mate_determinates 
clc
b=1
p=100
s=1
for n=1:p
    A=eye(n);
   

  for i=1:n-1
    A(i,i+1)=b;
  end
  for j=2:n
    A(j,j-1)=b;
  end
  for k=1:n
     A(k,k)=k;
  end
  DT(s)=det(A)
  s=s+1;

end 
DT3=det(A)
DTi=DT(p-1)*A(p,p)-DT(p-2)
