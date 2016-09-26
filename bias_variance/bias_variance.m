M = 10000; %number of data sets
x = linspace(-1,1,200); %test inputs
[ab_bar,ab] = parameter(M);

Eout = Eout(M,x,ab);
g_bar = gbar(x,ab_bar);
bias_plus_variance = bias(x,g_bar) + var(M,x,ab,g_bar);
f_x = x .^ 2;
