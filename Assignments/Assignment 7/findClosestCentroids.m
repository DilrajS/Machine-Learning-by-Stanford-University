function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS(X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1
%   vector of centroid assignments (i.e., each entry in the range [1..K])

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X, 1), 1);

% Compute the distance between each data point and each centroid
for i = 1:size(X, 1)
    distances = zeros(K, 1);
    for j = 1:K
        % Calculate the Euclidean distance between the data point and the centroid
        distances(j) = norm(X(i, :) - centroids(j, :))^2;
    end
    % Find the index of the centroid with the minimum distance
    [~, min_idx] = min(distances);
    idx(i) = min_idx;
end

end

