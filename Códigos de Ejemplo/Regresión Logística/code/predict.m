function p = predict(theta, X)
%PREDICT Predecir si la etiqueta es 0 o 1 usando los par�metros 
% de regresi�n log�stica aprendidos theta

m = size(X, 1); % N�mero de ejemplos de entrenamiento

p = zeros(m, 1);

for i=1:m
	p(i) = sigmoid(theta' * X(i,:)') >= 0.5;

% =========================================================================
end