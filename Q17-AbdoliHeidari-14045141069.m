% Q17 - Bar and pie charts
clc; clear; close all;
% a) bar chart
d = rand(1,5);
figure(1)
bar(d, 'r');
title('Daily consumption'); xlabel('Day'); ylabel('kWh');

% b) pie chart (values sum to 102, MATLAB normalizes them)
share = [22 28 8 33 11];
figure(2)
pie(share);

% c) explode largest slice (others) and add labels
labels = {'Cooling','Water heater','Lighting','Other appliances','Charging'};
explode = [0 0 0 1 0];
figure(3)
pie(share, explode, labels);
title('Home electricity share');
