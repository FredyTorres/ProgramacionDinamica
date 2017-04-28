clear all
clc
%% CAMBIO DE MONEDA POR PROGRAMACI�N VORAZ
%Un sistema monetario de un pa�s est� formado por monedas de 
%valores v1,v2,...,vn, el problema del cambio de dinero consiste en descomponer
%cualquier cantidad dada M en monedas de ese pa�s utilizando el menor n�mero
%posible de monedas.

monedas = [1, 500, 50, 100, 200, 25];   %Sistema Monetario 
monedasSort = quickSort(monedas)
cambioMonedas = 49;                     %Valor a cambiar  - saldo
dimMonedas = length(monedasSort);    %tama�o del vector de monedas - longitud
solucion = zeros(1, dimMonedas);

for i = 1:dimMonedas
        while monedasSort(i) <= cambioMonedas
            solucion(i)= solucion(i) + 1;
            cambioMonedas = cambioMonedas - monedasSort(i);
        end
end
        solucion






