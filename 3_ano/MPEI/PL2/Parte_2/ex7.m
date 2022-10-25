% O servidor nao receber nenhuma mensagem

m = 15; %media mensagens p/segundo
k0 = 0;

pa = (m.^k0 / factorial(k0)) * exp(-m);
disp(pa)

% O servidor receber mais de 10 mensagens
pX = zeros(1,11);

for i=0 : 10
    k = i +1;
    pX(k) = (m.^i / factorial(i)) * exp(-m);
end

p10oumenos = sum(pX);
pmaisde10 = 1 - p10oumenos;
disp(pmaisde10)
