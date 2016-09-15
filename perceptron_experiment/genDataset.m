function [input,w_star] = genDataset(N,d)
% This function outputs input dataset and weight vector w*
%   Input:
%		N: number of examples to be generated
%		d: dimensionality of each example
%	Output:
%		input: input datase which is used to train
%		w_star: weight vector

X = random('unif',-1,1,N,d);
w = genWeight(d);
w_star = w(2:d+1);
y = sign(X * w_star');
input = [X,y];
end

