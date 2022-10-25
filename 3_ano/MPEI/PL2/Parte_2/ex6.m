%1000 chips -> 1 defeituoso, ou seja, p(defeituoso) = 1/1000
%Amostra de 8000 -> 7

n = 8000;   %# de amostras
p = 1/1000; %prob de aparecer um chip com defeito
k = 7;      %# de chips com defeitos

% Distribuição binomial
%nCk = factorial(n)/(factorial(k)*factorial(n-k));
nCk = prod(n:-1:n-k+1)/prod(1:k);
p7 = nCk .* p.^k .* (1-p).^(n-k);

disp(p7)

% Lei de Poisson

m = 8 ; %media = (8000 * 1/1000) = 8 

P7 = (m.^k / factorial(k)) * exp(-m);

disp(P7)