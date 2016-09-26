function [Eout] = Eout(M,x,ab)
%EOUT Summary of this function goes here
%   Detailed explanation goes here
[~,n] = size(x);
X = [x;ones(1,n)];
g_D = ab * X;
f_x = x .^ 2;
diff = g_D - repmat(f_x,M,1);
Eout = sum(diff .^ 2) / M;
end

