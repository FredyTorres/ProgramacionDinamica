function [ salida ] = quickSort2(datos)
 
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
    %salida = [quickSort2( datos(datos <= pivote) ) pivote quickSort2( datos(datos > pivote) )];
    salida = [quickSort2(menores) pivote quickSort2(mayores)];        % de menor a mayor
    %salida = [quickSort2(mayores) pivote quickSort2(menores)];        % de mayor a menor
end