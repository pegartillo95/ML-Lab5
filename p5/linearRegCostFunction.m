function [J, grad] = linearRegCostFunction(X, y, theta, lambda)

m = length(y);

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

h = X * theta;
squaredErrors = (h - y) .^ 2;
thetaNoZero = [ 0; theta(2:end) ];
J = (1 / (2 * m)) * sum(squaredErrors) + (lambda / (2 * m)) * sum(thetaNoZero .^ 2);
grad = (1 / m) .* (X' * (h - y)) + (lambda / m) * thetaNoZero;

grad = grad(:);

end
