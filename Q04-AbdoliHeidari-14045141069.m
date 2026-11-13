% Q4 - Temperature sensor data
clc; clear;
% a)
T = [22.5 22.8 23.1 24.0 25.2 26.1 26.0 25.4 24.3 23.2];

% b) statistics
fprintf('Mean = %.2f C\n', mean(T));
fprintf('Max  = %.2f C\n', max(T));
fprintf('Min  = %.2f C\n', min(T));
fprintf('Std  = %.4f C\n', std(T));

% c) deviation from mean, no loop
dev = T - mean(T);
disp('Deviation from mean:'); disp(dev);

% d) sort and show 3rd sorted reading
Ts = sort(T);
disp('Third sorted reading:'); disp(Ts(3));
