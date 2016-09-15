function [ num_iters bounds] = perceptron_experiment ( N, d, num_samples )
%perceptron_experiment Code for running the perceptron experiment in HW1
%   Inputs: N is the number of training examples
%           d is the dimensionality of each example (before adding the 1)
%           num_samples is the number of times to repeat the experiment
%   Outputs: num_iters is the # of iterations PLA takes for each sample
%            bound_minus_ni is the difference between the theoretical bound
%               and the actual number of iterations
%      (both the outputs should be num_samples long)
iters = zeros(1,num_samples);
bounds = zeros(1,num_samples);
for i = 1:num_samples
    [input,w_star] = genDataset(N,d);
    X = input(:,1:d);
    y = input(:,d+1);
    P = min(y .* (X * w_star'));
    
    [~,iters(i)] = perceptron_learn(input);
    
    P_square = P * P;
    R_square = max(sum(X.^2,2));
    bounds(i) = R_square * (w_star * w_star') / P_square;
end
num_iters = iters;
 
end

