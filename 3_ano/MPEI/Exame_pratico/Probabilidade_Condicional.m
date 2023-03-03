%%
N = 1e5;
filhos = 2;

acontecimento = rand(2, N) > 0.5; 
prob_rapaz = sum(acontecimento); 

um_rapaz = sum(acontecimento(1,:)==1);
dois_rapazes = sum(prob_rapaz == 2);

p = (dois_rapazes)/(um_rapaz)

% ,: => fim da linha

%%
N = 1e5;
dardos = 20;
alvos = 100;

acontecimentos = randi(alvos,dardos,N);
dif = zeros(1,N);

for ncol=1: N
    col = acontecimentos(:, ncol);
    dif(ncol)=length(unique(col))==dardos;
end

prob = (sum(dif)/N)

%%
N=1e5;
T=1000;
k=10;

mx=randi(10,1000,1e5);
dif=zeros(1,N);

for ncol=1: N
    col = mx(:, ncol);
    dif(ncol)=length(unique(col))==k;
end

prob = (sum(dif)/N)

%%
N=1e5;
pA=0.01;
pB=0.05;
pC=0.001;

mA = rand(20,N) < pA;
mB = rand(30,N) < pB;
mC = rand(50,N) < pC;

total = [mA; mB; mC];

countA = 0;
countB = 0;
countC = 0;
erros = 0;

for j = 1:N
    i = randi(100);
    if total(i,j) == true
        erros = erros + 1; 
        if i > 50
            countC = countC + 1;
        elseif i > 20
            countB = countB + 1;
        else 
            countA = countA + 1;
        end
    end
end

probA = countA/erros;
probB = countB/erros;
probC = countC/erros;

disp(probA);
disp(probB);
disp(probC);