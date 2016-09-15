function [ w, iterations ] = perceptron_learn( data_in )
%perceptron_learn Run PLA on the input data
%   Inputs: data_in: Assumed to be a matrix with each row representing an
%                    (x,y) pair, with the x vector augmented with an
%                    initial 1, and the label (y) in the last column
%   Outputs: w: A weight vector (should linearly separate the data if it is
%               linearly separable)
%            iterations: The number of iterations the algorithm ran for
[n,k] = size(data_in);
d = k - 1;
w = zeros(1,d);
X = data_in(:,1:d);
y = data_in(:,k);
count = 0;
while true
   m = 0;
   for i = 1:n
       if y(i)*(w * X(i,1:d)') <= 0
           w = w + y(i) * X(i,1:d);
           m = m + 1;
       end
   end
   count = count + 1;
   if m == 0
       break;
   end
end
iterations = count;
end