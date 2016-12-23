function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    % Loop
    % num_theta = length(theta);
    % temp = zeros(num_theta, 1);
    % for j = 1:num_theta
    %     s = 0;
    %     for i = 1:m
    %         h = X(i, :) * theta;
    %         s = s + (h - y(i)) * X(i, j);
    %     end
    %     temp(j) = theta(j) - alpha / m * s;
    % end
    % theta = temp;

    % Vectors
    % Sizes
    % X = (m, 2)
    % y = (m, 1)
    % theta = (2, 1);

    % 1 for loop
    % num_theta = length(theta);
    % temp = zeros(num_theta, 1);
    % for j = 1:num_theta
    %     % h = (m, 2) * (2, 1) = (m, 1)
    %     h = X * theta;
    %     % h - y = (m, 1) - (m, 1) = (m, 1)
    %     % (h - y)' * X(:, j) = (1, m) * (m, 1)
    %     s = sum((h - y)' * X(:, j));
    %     temp(j) = theta(j) - alpha / m * s;
    % end
    % theta = temp;

    % no for loop
    h = X * theta; % (m, 1)
    s = (h - y)' * X; % (1, m) * (m, 2) = (1, 2)
    theta = theta - alpha / m * s'; % (2, 1) - (1, 1) / (1, 1) * (2, 1) = (2, 1)
    % ============================================================

    % Save the cost J in every iteration
    J_history(iter) = computeCost(X, y, theta);

end

end
