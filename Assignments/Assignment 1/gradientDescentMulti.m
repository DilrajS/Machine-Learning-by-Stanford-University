function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
    % GRADIENTDESCENTMULTI Performs gradient descent to learn theta
    % [theta, J_history] = GRADIENTDESCENTMULTI(X, y, theta, alpha, num_iters)
    % updates theta by taking num_iters gradient steps with learning rate alpha

    m = length(y);  % Number of training examples
    J_history = zeros(num_iters, 1);  % Initialize an array to store cost history

    for iter = 1:num_iters
        % Update theta using the vectorized gradient formula
        theta = theta - alpha * (1/m) * (((X*theta) - y)' * X)'; % Vectorized

        % Save the cost J in every iteration
        J_history(iter) = computeCostMulti(X, y, theta);
    end
end

