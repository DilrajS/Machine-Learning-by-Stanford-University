function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% Compute the predictions using the linear regression model
predictions = X * theta;

% Compute the squared differences between predictions and actual values
squared_diffs = (predictions - y) .^ 2;

% Calculate the cost using the Mean Squared Error formula
J = (1 / (2 * m)) * sum(squared_diffs);

end

