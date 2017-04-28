clear all
clc
%% SECUENCIA COMÚN POR PROGRAMACIÓN DINÁMICA
% Dada una secuencia X={x1 x2 ... xm}, decimos que Z={z1 z2 ... zk} es una
% subsecuencia de X (siendo k ? m) si existe una secuencia creciente {i1 i2 ... ik} de
% índices de X tales que para todo j = 1, 2, ..., k tenemos xij = zj.

%Secuencia o cadenas de ADN

secuencia1 = ['G', 'A', 'C', 'G', 'G', 'A', 'T', 'T', 'A', 'G',];
secuencia2 = ['G', 'A', 'T', 'C', 'G', 'G', 'A', 'A', 'T', 'A', 'G'];
%Dimensiones secuencia
longSecu1 = length(secuencia1);
longSecu2 = length(secuencia2);

%Inicializar C Y P - matrices - Tablas
TABLASECUENCIA = zeros(longSecu1 + 1, longSecu2 + 1);

for i = 1: longSecu1
    TABLASECUENCIA(i, 1) = 0;
end
    for j = 1: longSecu2
        TABLASECUENCIA(j, 1) = 0;
    end
    for i = 1:longSecu1
        for j = 1:longSecu2
            if ((secuencia1(i)) == (secuencia2(j)))
                TABLASECUENCIA(i+1, j+1) = TABLASECUENCIA(i, j)+1;    %por comenzar en 1 tocó sumar un +1 a las i y a las j
            elseif (TABLASECUENCIA(i, j+1) >= TABLASECUENCIA(i+1, j))
                TABLASECUENCIA(i+1, j+1) = TABLASECUENCIA(i, j+1);
            else
                TABLASECUENCIA(i+1, j+1) = TABLASECUENCIA(i+1, j);
            end
        end
    end
               %TABLASECUENCIA(longSecu1+1,longSecu2+1)     
                 
%% A CONTINUACIÓN SE IMPLEMENTA LA SOLUCIÓN DE LA SUBSECUENCIA MÁS LARGA
clc
longSecu1;
longSecu2; 
solucionSecuecia = zeros(1, var1);   % vector que contendrá las soluciones inicializadas en zero (0)               
            
        

