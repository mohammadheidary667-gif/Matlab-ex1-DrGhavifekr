function n = norm3(v)
% 3-norm of a vector, using a loop and an accumulator
acc = 0;
for k = 1:length(v)
    acc = acc + abs(v(k))^3;
end
n = acc^(1/3);
end
