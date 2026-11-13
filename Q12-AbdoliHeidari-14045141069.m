% Q12 - Complex numbers in AC circuits
clc; clear;
% a) warm up
z = (2+3i)/(3-4i);
fprintf('(2+3i)/(3-4i) = %.2f %+.2fi\n', real(z), imag(z));

% b) impedance
R = 10; L = 0.1; C = 2e-4; f = 50;
w = 2*pi*f;
Z = R + 1i*(w*L - 1/(w*C));
fprintf('Real(Z) = %.4f ohm\n', real(Z));
fprintf('Imag(Z) = %.4f ohm\n', imag(Z));

% c) magnitude and phase (degrees)
fprintf('|Z|     = %.4f ohm\n', abs(Z));
fprintf('angle   = %.4f degrees\n', angle(Z)*180/pi);
