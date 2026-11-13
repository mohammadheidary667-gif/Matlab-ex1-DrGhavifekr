% Q20 - Quadratic equation: roots and plot
clc; clear; close all;
% a)
a = input('a = ');
b = input('b = ');
c = input('c = ');
if a == 0
    error('a must not be zero for a quadratic equation.');
end
coef = [a b c];
r = roots(coef);
disp('Roots:'); disp(r);

% b) plot range
if isreal(r)
    lo = min(r) - 2; hi = max(r) + 2;
else
    v = -b/(2*a);          % vertex when roots are complex
    lo = v - 5; hi = v + 5;
end
x = linspace(lo, hi, 400);
y = polyval(coef, x);
plot(x, y, 'b', 'LineWidth', 2);
title('Parabola'); xlabel('x'); ylabel('y'); grid on

% c) mark real roots
hold on
if isreal(r)
    plot(r, zeros(size(r)), 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
end
hold off
