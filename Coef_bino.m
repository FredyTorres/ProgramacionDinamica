function [  ] = Coef_bino( n, k )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%     n = input('Ingrese n: ');
%     k = input('Ingrese k: ');

    if (k==0 || k==n)
        Coef_bino = 1;
    end
    if k>0 && k<n
       %disp('K no puede ser mayor')
       Coef_bino = factorial(n)/(factorial(k)*factorial(n-k))        
    else
        display('   ')
        display('K es menor que n')
        display('   ')
    end
end