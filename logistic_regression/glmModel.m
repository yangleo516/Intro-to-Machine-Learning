function [ w_glm, Ein_glm ] = glmModel( X, y )
%GLMFIT Summary of this function goes here
%   Detailed explanation goes here
[N,~] = size(X);
w_glm = glmfit(X,y,'binomial');
w_glm = w_glm';
X = [ones(N,1),X];
wX = X * w_glm';
y(y==0) = -1;
Ein_glm = sum(log(exp(-y .* wX) + 1)) / N;
end