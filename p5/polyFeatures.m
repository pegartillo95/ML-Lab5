function [X_poly] = polyFeatures(X, p)

X_poly = zeros(numel(X), p);


m = length(X);
powers = repmat([1:p], m, 1);
Xrepeated = repmat(X, 1, p);
X_poly = Xrepeated .^ powers;

end
