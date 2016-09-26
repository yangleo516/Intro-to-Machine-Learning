function [ab_bar,par] = parameter(M)
%GBAR Summary of this function goes here
%   Detailed explanation goes here
par = zeros(M,2);
for i = 1:M
    examples = gendata(2,1);
    X = examples(:,1);
    Y = examples(:,2);
    a = (Y(1) - Y(2)) / (X(1) - X(2));
    b = Y(1) - a * X(1);
    par(i,[1,2]) =[a,b]; 
end
ab_bar = sum(par,1) / M;
end

