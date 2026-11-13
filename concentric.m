% Concentric circles
clc; clear; close all;
colors = {'b','r','g','k','m'};
figure; hold on
for k = 1:5
    [x, y] = getCircle([0 0], k);
    plot(x, y, colors{k}, 'LineWidth', 3);
end
axis equal; grid on
title('Concentric circles');
