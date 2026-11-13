function [P, S] = powerCalc(V, I, pf)
% Active power P and apparent power S
S = V*I;
P = V*I*pf;
end
