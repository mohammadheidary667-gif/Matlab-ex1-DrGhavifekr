% Q1 - Electricity bill
clc; clear;
% a) 245 kWh
kwh = 245;
cost = 100*1500 + (kwh-100)*3000;
fprintf('Bill for %d kWh = %d Toman\n', kwh, cost);

% b) both 245 and 400 kWh in one run (no loop)
kwh  = [245 400];
cost = min(kwh,100)*1500 + max(kwh-100,0)*3000;
fprintf('Consumption %d kWh -> Bill = %d Toman\n', [kwh; cost]);
