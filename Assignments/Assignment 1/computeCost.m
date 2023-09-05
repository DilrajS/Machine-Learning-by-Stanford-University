function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% Compute the predicted values for all data points
predictions = X * theta;

% Compute the squared differences between predictions and actual values
squared_diffs = (predictions - y) .^ 2;

% Calculate the cost using the Mean Squared Error formula
J = (1 / (2 * m)) * sum(squared_diffs);



% =========================================================================

end
