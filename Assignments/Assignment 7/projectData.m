function Z = projectData(X, U, K)
%PROJECTDATA Computes the reduced data representation when projecting only
%on to the top k eigenvectors
%   Z = projectData(X, U, K) computes the projection of
%   the normalized inputs X into the reduced dimensional space spanned by
%   the first K columns of U. It returns the projected examples in Z.
%

% You need to return the following variables correctly.
Z = zeros(size(X, 1), K);

% Compute the projection of the data onto the top K eigenvectors
for i = 1:size(X, 1)
    x = X(i, :)';                 % Extract the i-th example
    projection = x' * U(:, 1:K);  % Project onto the first K eigenvectors
    Z(i, :) = projection;         % Store the result in Z
end

end

