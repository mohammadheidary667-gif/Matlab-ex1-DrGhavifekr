% Q14 - Loops and robot speed control
clc; clear;
% a) odd numbers 3..33 with for
for k = 3:2:33
    fprintf('%d ', k);
end
fprintf('\n');
% same with while
k = 3;
while k <= 34
    fprintf('%d ', k);
    k = k + 2;
end
fprintf('\n');

% b) series y = (2/x)^1 + ... + (2/x)^n
x = input('x = ');
n = input('n = ');
y = 0;
for k = 1:n
    y = y + (2/x)^k;
end
fprintf('y = %.6f\n', y);     % for x=2, n=10 -> y = 10

% c) robot speed controller
target = 500;
v = 0; steps = 0;
while abs(target - v) >= 5
    v = v + 0.1*(target - v);
    steps = steps + 1;
end
fprintf('Final speed = %.4f after %d steps\n', v, steps);
