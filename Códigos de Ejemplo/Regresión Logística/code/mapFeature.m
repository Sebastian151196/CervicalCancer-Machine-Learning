function out = mapFeature(X1, X2)
% MAPFEATURE Funci�n de mapeo de caracter�sticas a caracter�sticas polinomiales.
%
%   MAPFEATURE(X1, X2) mapea las dos caracter�sticas de entrada
%   a las caracter�sticas cuadr�ticas utilizadas en el ejercicio de regularizaci�n.
%
% Devuelve una nueva matriz de funciones con m�s funciones, que comprende
% X1, X2, X1. ^ 2, X2. ^ 2, X1 * X2, X1 * X2. ^ 2, etc.
%
% De entradas X1, X2 deben ser del mismo tama�o
%
degree = 6;
out = ones(size(X1(:,1)));
for i = 1:degree
    for j = 0:i
        out(:, end+1) = (X1.^(i-j)).*(X2.^j);
    end
end

end