% Q7 - Capacitor charging
clc; clear;
% a)
t = [0 1 2 5 10];
v = 12*(1 - exp(-t/2));
fprintf('t = %4.1f s -> v = %.4f V\n', [t; v]);

% b) time to reach 95%
t95 = -2*log(0.05);
fprintf('Time to reach 95%% = %.4f s\n', t95);

% c) discharge
vd = 12*exp(-t/2);
fprintf('Discharge voltage at t = 10 s: %.4f V\n', vd(t==10));
