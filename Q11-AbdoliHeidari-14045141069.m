% Q11 - Limits
clc; clear;
syms t x
% a)
L1 = limit((1 - cos(t))/t^2, t, 0);
% b)
L2 = limit((t - 3)/(2*t + 1), t, inf);
disp('a) limit at 0:'); disp(L1);
disp('b) limit at infinity:'); disp(L2);

% c) left and right limits of 1/x at 0
Ll = limit(1/x, x, 0, 'left');
Lr = limit(1/x, x, 0, 'right');
disp('left limit of 1/x:');  disp(Ll);
disp('right limit of 1/x:'); disp(Lr);
