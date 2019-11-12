function plotDecisionBoundary(theta, X, y)
%PLOTDECISIONBOUNDARY Traza los puntos de datos X e Y en una nueva figura 
% con el l�mite de decisi�n definido por theta


% PLOTDECISIONBOUNDARY (theta, X, y) traza los puntos de datos con + para el
% ejemplos positivos y o para los ejemplos negativos. Se supone que X es una
% 1) Matriz Mx3, donde la primera columna es una columna de todos para el intercepto.
% 2) Matriz MxN, N> 3, donde la primera columna es todos unos

% Cargamos la informacion en el plot
plotData(X(:,2:3), y);
hold on

if size(X, 2) <= 3
    % Solo se necesitan 2 puntos para definir una l�nea, as� que se eligen dos puntos finales
    plot_x = [min(X(:,2))-2,  max(X(:,2))+2];

    % Calcular la l�nea de l�mite de decisi�n
    plot_y = (-1./theta(3)).*(theta(2).*plot_x + theta(1));

    % Trazar y ajustar los ejes para una mejor visualizaci�n.
    plot(plot_x, plot_y)
    
    legend('Admitted', 'Not admitted', 'Decision Boundary')
    axis([30, 100, 30, 100])
else
    % Aqu� est� el rango de cuadr�cula
    u = linspace(-1, 1.5, 50);
    v = linspace(-1, 1.5, 50);

    z = zeros(length(u), length(v));
    % Evaluar z = theta * x sobre la cuadr�cula
    for i = 1:length(u)
        for j = 1:length(v)
            z(i,j) = mapFeature(u(i), v(j))*theta;
        end
    end
    z = z'; % Importante transponer z antes de llamar contorno.

    % Plot z = 0
    % Se ecesita especificar el rango [0, 0]
    contour(u, v, z, [0, 0], 'LineWidth', 2)
end
hold off

end