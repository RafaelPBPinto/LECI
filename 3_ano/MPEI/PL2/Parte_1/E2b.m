N = 1e5;
dardos = 20;
alvos = 100;

acontecimentos = randi(alvos,dardos,N);
dif = zeros(1,N);

for ncol=1: N
    col = acontecimentos(:, ncol);
    dif(ncol)=length(unique(col))==dardos;
end

prob = 1 - (sum(dif)/N)