% Q19 - Symmetric matrix
clc; clear;
% a)
A = rand(4);
if all(all(A == A.'))
    disp('A is symmetric');
else
    disp('A is NOT symmetric');
end

% b) make symmetric
S = (A + A.')/2;
if all(all(S == S.'))
    disp('S is symmetric');
else
    disp('S is NOT symmetric');
end

% c) manual 3x3 symmetric matrix
M = [1 2 3; 2 5 6; 3 6 9];
if all(all(M == M.'))
    disp('M is symmetric');
else
    disp('M is NOT symmetric');
end
