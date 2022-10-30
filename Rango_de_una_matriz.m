%Rango de una mtriz 
clc
A=[1 2 1 7;2 0 1 4; 1 0 2 5;1 2 3 11;2 1 4 12]
%Rango de A
Rango=rank(A)
%Rango de la aumentada de A
%Aum=[1 -1 1 0;2 1 -1 -3;1 -3 4 5]
E=rref(A)