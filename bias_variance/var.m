function [variance] = var(M,x,ab,g_bar)
%VAR Summary of this function goes here
%   Detailed explanation goes here
% x = [x1,x2,...,xn]
% X = [x1,x2,...,xn;
%       1, 1,..., 1]
[~,n] = size(x);
X = [x;ones(1,n)];
g_D = ab * X;
diff = g_D - repmat(g_bar,M,1);
variance = sum(diff .^ 2) / M;
end

