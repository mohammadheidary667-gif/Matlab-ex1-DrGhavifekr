% Q6 - Inventory value with matrix multiplication
clc; clear;
A = [120 80 45; 200 60 30; 90 140 75];
p = [35000; 80000; 120000];

% a) value of each branch
V = A*p;
fprintf('Branch %d inventory value = %d Toman\n', [(1:3); V']);

% b) element-wise version (A.*p) - different result: 3x3 matrix, not a sum
disp('[ A*p  |  A.*p ]'); disp([A*p, A.*p]);

% c) transpose: rows = item types, columns = branches
At = A';
disp('A transpose:'); disp(At);

% d) total number of items in each branch
total_items = A*ones(3,1);
disp('Total items per branch:'); disp(total_items);
