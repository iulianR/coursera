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

% Loop

% s = 0;
% for i = 1:m
%     h = X(i, :) * theta;
%     s += power(h - y(i), 2);
% end
% J = 1 / (2 * m) * s;

% Vectors
% Sizes
% X = (m, 2)
% y = (m, 1)
% theta = (2, 1)

% h = (m, 2) x (2, 1) = (m, 1)
h = X * theta;

% h - y: (m, 1) - (m, 1) = (m, 1)
s = sum(power(h - y, 2));
J = 1 / (2 * m) * s;


% =========================================================================

end
