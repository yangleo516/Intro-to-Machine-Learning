function [ w, e_in, count ] = logistic_reg( X, y, w_init, max_its, eta )
%LOGISTIC_REG Learn logistic regression model using gradient descent
%   Inputs:
%       X : data matrix (without an initial column of 1s)
%       y : data labels (plus or minus 1)
%       w_init: initial value of the w vector (d+1 dimensional)
%       max_its: maximum number of iterations to run for
%       eta: learning rate
    
%   Outputs:
%       w : weight vector
%       e_in : in-sample error (as defined in LFD)
[N,~] = size(X);
iniCol = ones(N,1);
X = [iniCol,X];
w = w_init;
count = 0;
while max_its > 0
    count = count + 1;
    XY = bsxfun(@times, X, y);
    wX = X * w';
    ywX = wX .* y;
    prepUp = bsxfun(@rdivide, XY, exp(ywX)+1);
    deltaEin = -(1/N) * sum(prepUp,1);
    w = w - eta * deltaEin;
      if(max(abs(deltaEin))*10^6 < 1)
          break;
      end
    max_its = max_its - 1;
end
e_in = sum(log(exp(-y .* wX) + 1)) / N;
end

