clc
clear all
%% ############# EJERCICIO DE COEFICIENTES BINOMIALES #####################
%Números combinatorios

%ecuación
% if n > k
% combinatoria = factorial(n)/(factorial(k)*factorial(n-k));
% disp(combinatoria)
% end

n = input('Ingrese n: ');   %
k = input('Ingrese k: ');   %
Coef_bino(n,k)

TABLA = zeros(n);

 for i = 1:n+1
     TABLA(i,1) = 1;
 end

  for l = 2:n+1
     TABLA(l,l) = 1;
  end

%  for m = 3:k+1
%      TABLA(m,m) = 1;
%  end

  for i = 3:n+1
      for j = 2:(k+1) %%%i-1
          %if(j <= k)
            TABLA(i, j) = TABLA(i-1, j-1) + TABLA(i - 1, j);
          %end
     end
  end
%##### Solución #####
 TABLA(n+1,k+1)