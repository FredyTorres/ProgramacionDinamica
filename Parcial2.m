%% ALGORITMO PARA CALCULAR LOS NÚMEROS DE FIBONACCI
clear all
clc

Num = input('Ingrese el numeros total de la serie: ');
fibo1 = 1;
fibo2 = 1;
SECUENCIA = zeros(1, Num);

if Num <= 1
    SECUENCIA = 1;
else
    SECUENCIA = [fibo1, fibo2];
    for i = 3:Num
        SECUENCIA(i) = SECUENCIA(i-1) + SECUENCIA(i-2);
    end
    SECUENCIA(Num)
end

%% ALGORITMO PARA CALCULAR LA POTENCIA DE UN NÚMERO
clear all
clc

Num = input('Ingrese la potencia a calcular: ');
b = input('Ingrese la base: ');
POTENCIA = zeros(1, Num);

if Num == 0
    POTENCIA = 1;
else
    POTENCIA = b;
    for i = 2:Num
        POTENCIA(i) = (POTENCIA(i-1) * b);
    end
    POTENCIA(Num)
end

%% ALGORITMO PARA CALCULAR LA SUMA DE LOS TRES NÚMEROS MÁS GRANDES DE UN SECUENCIA
clear all
clc

numeros = [30, 500, 50, 100, 200, 25, 1];   %Vector de números 
%numeros = [-2, 11, -4, 13, -5, -2];
numerosSort = quickSort2(numeros);
dimNumeros = length(numerosSort);           %tamaño del vector de numeros - longitud
solucionNumeros = zeros(1, 3);

for i = 1:3
            solucionNumeros(i)= numerosSort(end-i+1);
end
            SumaNumerosMayores = sum(solucionNumeros)

%% ALGORITMO PARA CALCULAR LA SUMA DE LOS TRES NÚMEROS MÁS GRANDES DE UN SECUENCIA (Fuerza bruta)
clear all
clc

%numeros = [30, 500, 50, 100, 200, 25, 1];
numeros = [-2, 11, -4, 13, -5, -2];
dimNumeros = length(numeros); 
SumaMax = 0;
numMax = 0;
Solucion = zeros(1, dimNumeros);

for i = 1:dimNumeros         % Se recorre todos los posibles comienzos de subsecuencia(para i desde 1 hasta dimNumeros )
    SumaMax = 0;
    for j = i: dimNumeros    % Se recorre todos los posibles finales de subsecuencia(para j dede 1 hasta dimNumeros )
        SumaMax = SumaMax + numeros(j); %se calcula la suma de la subsecuencia elegida y se almacena la solución
        %Solucion(j) = SumaMax + numeros(j)
        if (SumaMax > numMax)           % más grande hasta el momento.
            numMax = SumaMax;
            %Solucion(i) = numMax;
        end
    end
end
   numMax         






