N=1e4;
palavras=3;
seq=2;

acontecimentos=randi(palavras,seq,N);

P1=acontecimentos(1,:)==1;
P2=acontecimentos(2,:)==2;

P12=sum(P1 & P2);
A = P12/N;
disp(A);