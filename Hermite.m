function [temp] = Hermite(k)
syms z;
H{1} = sym('1');
for n =2:k
    H{n} = simplify(z*H{n-1} - diff(H{n-1},z));
end
temp = H{k};
end
