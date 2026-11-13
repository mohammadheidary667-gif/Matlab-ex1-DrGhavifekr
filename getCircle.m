function [x, y] = getCircle(center, r)
% Returns coordinates of a circle with given center [cx cy] and radius r
t = linspace(0, 2*pi, 200);
x = center(1) + r*cos(t);
y = center(2) + r*sin(t);
end
