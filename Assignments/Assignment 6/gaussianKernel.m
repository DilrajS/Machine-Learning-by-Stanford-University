function sim = gaussianKernel(x1, x2, sigma)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a Gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

% Calculate the squared Euclidean distance between x1 and x2
distance = sum((x1 - x2) .^ 2);

% Compute the similarity using the Gaussian kernel formula
sim = exp(-distance / (2 * sigma^2));

end

