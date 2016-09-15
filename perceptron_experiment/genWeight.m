function [weight_star] = genWeight(d)
% this function is to return the weight vector which is used to generate y's
%   Input:
%       d: dimension for the weight vector
%   Output:
%       weight_star: weight vector with d+1 dimension where the first value is
                    a threshold

weight_star = zeros(1,d+1);
weight_star(2:d+1) = random('unif',0,1,1,d);
end

