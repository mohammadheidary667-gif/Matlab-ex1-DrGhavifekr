% Q18 - Square root by iteration
clc; clear;
% a) read a and compute
a = input('Enter a number: ');
[r, it] = mySqrt(a);
fprintf('sqrt(%g) = %.6f after %d iterations\n', a, r, it);

% b) compare with sqrt for 25, 7, 0.5
for a = [25 7 0.5]
    [r, it] = mySqrt(a);
    fprintf('a=%g: mine=%.6f, sqrt=%.6f, diff=%.2e, iterations=%d\n', ...
        a, r, sqrt(a), abs(r - sqrt(a)), it);
end

% (local function - c) stops with error for a <= 0)
function [x, count] = mySqrt(a)
    if a <= 0
        error('Input must be a positive number (a > 0).');
    end
    x = a; count = 0; err = inf;
    while err >= 0.0001
        xnew = (x + a/x)/2;
        err = abs(xnew - x);
        x = xnew;
        count = count + 1;
    end
end
