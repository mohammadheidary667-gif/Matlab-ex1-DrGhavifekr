% Q8 - Projectile with polynomials
clc; clear;
% a)
p = [-5 40 0];
t = [0 2 4 6];
h = polyval(p, t);
fprintf('t = %d s -> h = %.2f m\n', [t; h]);

% b) roots (ball on the ground)
r = roots(p);
fprintf('Ball is on the ground at t = %g s\n', r);

% c) factored form: 5t * (8 - t)
q = conv([5 0], [-1 8]);
disp('conv result:'); disp(q);
disp(isequal(q, p));   % 1 means equal

% d) vertex of parabola
a = p(1); b = p(2);
tmax = -b/(2*a);
hmax = polyval(p, tmax);
fprintf('Max height = %.2f m at t = %.2f s\n', hmax, tmax);
