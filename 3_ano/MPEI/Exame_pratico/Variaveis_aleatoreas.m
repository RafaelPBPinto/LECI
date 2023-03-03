xi=0:4;
p=ones(1,5)/5;
stem(xi,p),xlabel('x'),ylabel('px(x)');

N=1e4;
lancamentos=4;

m = rand(lancamentos, N) > 0.5;
p0 = sum(sum(m) == 0)/N;
p1 = sum(sum(m) == 1)/N;
p2 = sum(sum(m) == 2)/N;
p3 = sum(sum(m) == 3)/N;
p4 = sum(sum(m) == 4)/N;

coroa=[p0,p1,p2,p3,p4];
vesperado = max(coroa); %p2
disp(vesperado);

%%
N = 1e5;
dp = 2;
m = 14;

classificacoes = dp * randn(1,N) + m;

% a)
sucessos = (12<classificacoes & classificacoes<16);
pA = sum(sucessos)/N;
pnormA = normcdf(sucessos);

% b)
sucessos = (10<classificacoes & classificacoes<18);
pB = sum(sucessos)/N;
pnormB = normcdf(sucessos);

% c)
sucessos = (classificacoes>=10);
pC = sum(sucessos)/N;
pnormC = normcdf(sucessos);

disp(pA);
disp(pnormA);
disp(pB);
disp(pnormB);
disp(pC);
disp(pnormC);

%%
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