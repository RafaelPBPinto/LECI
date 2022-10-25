N = 1e5;
filhos = 2;
rapazes = 1;

acontecimento = rand(filhos, N) > 0.5;
sucessos = sum(acontecimento) >= rapazes;
probabilidade = sum(sucessos)/N;