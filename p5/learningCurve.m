function [error_train, error_val] = ...
    learningCurve(X, y, Xval, yval, lambda)
% Number of training examples
m = size(X, 1);

error_train = zeros(m, 1);
error_val   = zeros(m, 1);



for i = 1:m,
    XSubset = X(1:i, :);
    ySubset = y(1:i);
    theta = trainLinearReg(XSubset, ySubset, lambda);
    error_train(i) = linearRegCostFunction(XSubset, ySubset, theta, 0);
    error_val(i) = linearRegCostFunction(Xval, yval, theta, 0);
end;

end