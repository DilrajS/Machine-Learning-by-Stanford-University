function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the
%   cost of using theta as the parameter for linear regression to fit the
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% Compute the hypothesis
hypothesis = X * theta;

% Compute the unregularized cost
J_unreg = (1 / (2 * m)) * sum((hypothesis - y) .^ 2);

% Compute the regularization term
reg_term = (lambda / (2 * m)) * sum(theta(2:end) .^ 2);

% Compute the regularized cost
J = J_unreg + reg_term;

% Compute the gradient for theta0 (no regularization)
grad(1) = (1 / m) * sum((hypothesis - y) .* X(:, 1));

% Compute the gradient for the rest of the parameters with regularization
grad(2:end) = ((1 / m) * (X(:, 2:end)' * (hypothesis - y))) + ((lambda / m) * theta(2:end));

% =========================================================================

grad = grad(:);

end

