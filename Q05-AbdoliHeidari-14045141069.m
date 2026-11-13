% Q5 - Random matrix, swap max and min
clc; clear;
% a)
A = 10*rand(4);
disp('Original matrix:'); disp(A);

% b) max/min and their positions
mx = max(A(:));   mn = min(A(:));
[rM,cM] = find(A==mx, 1);
[rm,cm] = find(A==mn, 1);
fprintf('Max = %.4f at (row %d, col %d)\n', mx, rM, cM);
fprintf('Min = %.4f at (row %d, col %d)\n', mn, rm, cm);

% c) swap by indexing
tmp = A(rM,cM);
A(rM,cM) = A(rm,cm);
A(rm,cm) = tmp;
disp('Matrix after swap:'); disp(A);

% d) column means
fprintf('Column means: %s\n', num2str(mean(A), '%.4f  '));
