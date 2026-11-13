% Q10 - From velocity to distance
clc; clear;
% a) numeric, step 0.01
t = 0:0.01:5;
v = 3*t.^2 + 2*t;
d_num = trapz(t, v);

% b) symbolic
syms tt
d_sym = double(int(3*tt^2 + 2*tt, tt, 0, 5));
fprintf('trapz  distance = %.6f m\n', d_num);
fprintf('int    distance = %.6f m\n', d_sym);

% c) step 0.5
t2 = 0:0.5:5;
v2 = 3*t2.^2 + 2*t2;
d2 = trapz(t2, v2);
fprintf('trapz (h=0.5) = %.6f, abs error = %.6f\n', d2, abs(d2 - d_sym));

% d) cumulative distance, when half of total distance is passed
dc = cumtrapz(t, v);
idx = find(dc >= d_num/2, 1);
fprintf('Half distance passed at t = %.2f s (during second number %d)\n', t(idx), ceil(t(idx)));
