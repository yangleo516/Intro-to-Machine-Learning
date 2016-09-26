function [ examples ] = gendata(N,d)
%GENDATA Summary of this function goes here
%   Detailed explanation goes here
X = random('unif',-1,1,N,d);
Y = X .^ 2;
examples = [X Y];
end

