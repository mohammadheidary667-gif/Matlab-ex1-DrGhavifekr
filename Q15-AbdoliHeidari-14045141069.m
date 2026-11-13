% Q15 - Functions (c2k.m, norm3.m, powerCalc.m must be in the same folder)
clc; clear;
% a)
fprintf('0 C   = %.2f K\n', c2k(0));
fprintf('25 C  = %.2f K\n', c2k(25));
fprintf('100 C = %.2f K\n', c2k(100));

% b)
fprintf('norm3([3 4])     = %.6f\n', norm3([3 4]));
fprintf('norm3([1 2 2])   = %.6f\n', norm3([1 2 2]));

% c)
[P, S] = powerCalc(220, 5, 0.9);
fprintf('P = %.2f W, S = %.2f VA\n', P, S);
