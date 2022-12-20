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
