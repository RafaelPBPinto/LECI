%Aviao de 2 motores -> despenha se 
% quando ambos os motores falharem (>50% dos motores falharem):
n = 2;
k = 2;
p = logspace(-3, log10(1/2),100);
nCk = factorial(n)/(factorial(k) * factorial(n-k)); % Combinações n,k

p2Motores = nCk .* p.^k .* (1-p).^(n-k);

%Aviao de 4 motores -> despenha se 3 ou 4 motores falharem
n = 4;

k = 3;
nCk = factorial(n)/(factorial(k) * factorial(n-k));
p4Motores = nCk .* p.^k .* (1-p).^(n-k);

k = 4;
nCk = factorial(n)/(factorial(k) * factorial(n-k));
p4Motores = p4Motores + (nCk .* p.^k .* (1-p).^(n-k));

figure(1);
hold on;

x = logspace(-3, log10(1/2),100);

plot(x,p4Motores);

plot(x,p2Motores);

legend("4 motores","2 motores");

xlabel('p');
ylabel('pX');
title("Variacao de pX em funcao de p");

hold off;