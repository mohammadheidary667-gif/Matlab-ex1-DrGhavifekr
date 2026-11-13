% Olympic flag
clc; clear; close all;
r = 1;
centers = [0 0; 2.4 0; 4.8 0; 1.2 -1; 3.6 -1];
colors  = {'b','k','r','y','g'};   % top: blue, black, red; bottom: yellow, green
figure; hold on
for k = 1:5
    [x, y] = getCircle(centers(k,:), r);
    plot(x, y, colors{k}, 'LineWidth', 4);
end
axis equal; axis off
title('Olympic rings');
