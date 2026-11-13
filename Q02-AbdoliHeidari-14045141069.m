% Q2 - Solar panel income
clc; clear;
% a) data
daily_kwh = 4.2;      % kWh per day
price     = 5000;     % Toman per kWh

% b) monthly and yearly income
monthly = daily_kwh*30*price;
yearly  = daily_kwh*365*price;

% c) formatted output (use %% to print the percent sign)
fprintf('Income: %.2f Toman\n', monthly);
fprintf('Yearly Income: %.2f Toman\n', yearly);
fprintf('Panel efficiency example: 20%%\n');

% d) who and format
who
format short
disp(10/3)
format long
disp(10/3)
format short
