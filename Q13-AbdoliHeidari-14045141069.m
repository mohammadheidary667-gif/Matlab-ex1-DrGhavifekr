% Q13 - Inverse Laplace
clc; clear;
% a)
syms s t
Is = 12/(s*(4 + s/5));      % s/5 = 0.2*s (kept exact)

% b)
i_t = ilaplace(Is, s, t);
disp('i(t) = '); disp(i_t);

% c) values at t = 0.1 and t = 1
tv = [0.1 1];
for k = 1:2
    iv = double(subs(i_t, t, tv(k)));
    fprintf('i(%.1f) = %.4f A\n', tv(k), iv);
end

% d) steady state
i_ss = limit(i_t, t, inf);
fprintf('Steady state (limit) = %g A,  V/R = %g A\n', double(i_ss), 12/4);
