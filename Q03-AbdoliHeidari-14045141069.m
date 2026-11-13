% Q3 - Ohm's law calculator
clc; clear;
% a) read inputs
V = input('Voltage (V): ');
R = input('Resistance (ohm): ');

% b) compute
I = V/R;
P = V*I;

% c) print with units
fprintf('Current = %.4f A\n', I);
fprintf('Power   = %.4f W\n', P);

% d) run for V=12, R=820 and save result in a file
V = 12; R = 820;
I = V/R; P = V*I;
fid = fopen('Q03_result.txt','w');
fprintf(fid, 'V = %g V, R = %g ohm\n', V, R);
fprintf(fid, 'Current = %.4f A\n', I);
fprintf(fid, 'Power   = %.4f W\n', P);
fclose(fid);
fprintf('Result saved in Q03_result.txt\n');
