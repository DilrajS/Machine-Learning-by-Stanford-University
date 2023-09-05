function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% Initialize values
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% Loop through each feature dimension
for feature = 1:size(X, 2)
    % Compute the mean of the feature and subtract it from the dataset
    mu(feature) = mean(X(:, feature));
    X_norm(:, feature) = X_norm(:, feature) - mu(feature);

    % Compute the standard deviation of the feature and divide each feature by it
    sigma(feature) = std(X(:, feature));
    X_norm(:, feature) = X_norm(:, feature) / sigma(feature);
end

% ============================================================
end

