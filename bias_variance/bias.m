function [bias] = bias(x,g_bar)
%BIAS Summary of this function goes here
%   Detailed explanation goes here
f_x = x .^ 2;
bias = (g_bar - f_x) .^ 2;
end

