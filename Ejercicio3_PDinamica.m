clear all
clc
%% CAMBIO DE MONEDA POR PROGRAMACIÓN DINÁMICA
%Un sistema monetario de un país está formado por monedas de 
%valores v1,v2,...,vn, el problema del cambio de dinero consiste en descomponer
%cualquier cantidad dada M en monedas de ese país utilizando el menor número
%posible de monedas.

%monedas = [1, 500, 50, 100, 200, 25];   %Sistema Monetario 
monedas = [90, 100, 1];   %Sistema Monetario 
%monedasSort = quickSort(monedas)
cambioMonedas = 180;                      %Valor a cambiar  - saldo
dimMonedas = length(monedas);             %tamaño del vector de monedas - longitud
%solucion = zeros(1, dimMonedas);

%Inicializar C Y P - matrices - Tablas
P = zeros(dimMonedas, cambioMonedas + 1);  %caso I
C = zeros(dimMonedas, cambioMonedas + 1);  %caso I

for i = 1: dimMonedas
    for j = 1: cambioMonedas
        if (i == 1 && j < monedas(i))              %caso II
            C(i,j+1)=inf;
            P(i,j+1)=0;
        else
           if (i == 1 && j >= monedas(i))          %caso III
            C(i,j+1) = 1 + C(i, j - monedas(i) + 1);
            P(i,j+1) = 1;
           else
               if ((i > 1) && (j < monedas(i)))     %caso IV
                    C(i,j+1) = C(i-1, j + 1);
                    P(i,j+1) = 0;
               else
                   if (i > 1 && j >= monedas(i))    %caso V
                    C(i,j+1) = min(C(i-1, j+1), 1 + C(i, j - monedas(i) + 1));
                    P(i,j+1) = (C(i, j+1) ~= C(i-1, j+1));
                   end
               end
           end
        end
    end
end
%RETORNAR LAS MATRICES P Y C
P,C

%% A CONTINUACIÓN SE IMPLEMENTA LA SOLUCIÓN DEL CAMBIO DE MONEDAS
clc
var1 = dimMonedas;
var2 = cambioMonedas + 1;
solucion = zeros(1, var1);   % vector que contendrá las soluciones inicializadas en zero (0)

    while (var1 ~= 0) && (var2 ~= 0)
            if (P(var1, var2) == 0)
                    var1 = var1 - 1;
            else
                solucion(var1) = solucion(var1) + 1;
                var2 = var2 - monedas(var1);
            end
    end
    
    monedas
    solucion
    






