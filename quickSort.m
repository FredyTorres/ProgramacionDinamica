function [ salida ] = quickSort(datos)
 
    if numel(datos) <= 1 %Si el arreglo tiene 1 elemento, no es posible ordenar   
        salida = datos;
        return
    end
 
    pivote = datos(end);
    datos(end) = [];
    
    menores = datos( datos <= pivote );
    mayores = datos( datos > pivote );
    
    %La matriz salida es la concatenación de la matriz ordenada "menores",
    %el pivote y la matriz "mayores". 
    %salida = [quickSort( datos(datos <= pivote) ) pivote quickSort( datos(datos > pivote) )];
    %salida = [quickSort(menores) pivote quickSort(mayores)];        % de menor a mayor
    salida = [quickSort(mayores) pivote quickSort(menores)];        % de mayor a menor
end