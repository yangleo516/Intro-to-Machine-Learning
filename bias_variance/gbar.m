function [g_bar] = gbar(x,ab_bar)
%GBAR Summary of this function goes here
%   Detailed explanation goes here
[~,n] = size(x);
X = [x;ones(1,n)];
g_bar = ab_bar * X;
end

