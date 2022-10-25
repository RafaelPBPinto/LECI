m = 0.02;
pX = zeros(1,2);

for i=0 : 1
    k = i +1;
    pX(k) = (m.^i / factorial(i)) * exp(-m);
end

p = sum(pX);
disp(p)