N=1e4;
palavras=3;
seq=2;

acontecimentos=randi(palavras,seq,N);
P=sum(sum(acontecimentos<3)>=1);
C = P/N;
disp(C);