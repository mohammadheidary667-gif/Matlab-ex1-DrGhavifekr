% Q9 - Velocity and acceleration from position data
clc; clear;
% a)
t = 0:0.5:20;
s = 60*(1 - exp(-t/5));

% b) numeric derivatives
v_diff = diff(s)./diff(t);
v_grad = gradient(s, 0.5);
fprintf('length(t)      = %d\n', length(t));
fprintf('length(diff)   = %d\n', length(v_diff));
fprintf('length(gradient) = %d  (same length as t)\n', length(v_grad));

% c) symbolic derivative
syms ts
ss = 60*(1 - exp(-ts/5));
vs = diff(ss, ts);
v5 = double(subs(vs, ts, 5));
fprintf('Symbolic velocity at t=5 s: %.4f m/s\n', v5);

% d) max velocity, velocity and acceleration at t = 10 s
fprintf('Max velocity (gradient) = %.4f m/s\n', max(v_grad));
a_grad = gradient(v_grad, 0.5);
k = find(t==10);
fprintf('At t=10 s: velocity = %.4f m/s, acceleration = %.4f m/s^2\n', v_grad(k), a_grad(k));
