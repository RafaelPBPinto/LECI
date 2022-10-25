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