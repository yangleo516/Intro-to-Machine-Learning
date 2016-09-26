figure(1);
plot(x,f_x);
hold on;
plot(x,g_bar);
xlabel('x');
ylabel('value');
legend('f(x)','gbar');
title('gbar and f(x); 10000 datasets');
hold off;

figure(2);
plot(x,Eout);
hold on;
plot(x,bias_plus_variance);
xlabel('x');
ylabel('value');
legend('Eout','bias+var');
title('Eout VS bias+var; 10000 datasets');
hold off;

figure(3);
plot(x,Eout - bias_plus_variance);
xlabel('x');
ylabel('value');
title('Eout - bias+var; 10000 datasets');