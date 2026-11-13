% Q16 - 2D plots
clc; clear; close all;
% a) y1 and y2 in one figure
t = 0:0.1:5;
y1 = sin(t).*cos(t).^2./(t.^2 + 1);
y2 = sqrt(t.^3)*exp(2);
figure(1)
plot(t, y1, 'b', 'LineWidth', 2); hold on
plot(t, y2, 'r--', 'LineWidth', 1);
legend('y1','y2'); title('y1 and y2');
xlabel('t'); ylabel('y'); grid on

% b) three panels
x = -2:0.05:2;
f = sin(x).^2 + sinh(x).^2;
Z = cos(x).^2 + cosh(x).^2;
k = x.^2 + 2*x.*sin(x);
figure(2)
subplot(3,1,1); plot(x, f); title('f(x)');
subplot(3,1,2); plot(x, Z); title('Z(x)');
subplot(3,1,3); plot(x, k); title('k(x)');

% c) carrier wave and sampling
tc = 0:0.001:2;
sc = sin(2*pi*3*tc);
ts = 0:0.1:2;
ss = sin(2*pi*3*ts);
figure(3)
subplot(2,1,1); plot(tc, sc); title('Continuous carrier s(t)');
xlabel('t (s)'); ylabel('s(t)'); grid on
subplot(2,1,2); stem(ts, ss); title('Sampled signal (step 0.1)');
xlabel('t (s)'); ylabel('s[n]'); grid on
