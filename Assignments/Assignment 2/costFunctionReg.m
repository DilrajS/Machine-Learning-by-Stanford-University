function [J, grad] = costFunctionReg(theta, X, y, lambda)
    % COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
    %   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
    %   theta as the parameter for regularized logistic regression and the
    %   gradient of the cost w.r.t. to the parameters.

    % Initialize some useful values
    m = length(y); % number of training examples

    % You need to return the following variables correctly
    J = 0;
    grad = zeros(size(theta));

    h_theta = sigmoid(X * theta);
    J = (1 / m) * (-y' * log(h_theta) - (1 - y)' * log(1 - h_theta)) + (lambda / (2 * m)) * sum(theta(2:end) .^ 2);

    thetaZero = theta;
    thetaZero(1) = 0;

    grad = ((1 / m) * (h_theta - y)' * X) + (lambda / m) * thetaZero';

    % =============================================================
end

% Sigmoid function to calculate the hypothesis
function g = sigmoid(z)
    g = 1.0 ./ (1.0 + exp(-z));
end

