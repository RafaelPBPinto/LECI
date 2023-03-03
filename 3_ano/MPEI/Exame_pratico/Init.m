%% Exc1
    T = [   0   0   0       0   0       0
            0.2 0   0       0   0       0
            0   0   0       0.1 0.45    0   
            0   0   0.3     0   0.55    0
            0.8 1   0.7     0   0       0
            0   0   0       0.9 0       1];

    % mais pequeno

   T1 = T*0.8;
   T2 = T1*0.55;
   T3 = T2*0.9;
   Tx = T1+T2+T3;

N = 1000;
H = zeros(N);
F = zeros(Tx);
for i = 1:N
    count = 1;
    while F ~= Tx
        F = F*count;
        count = count + 1;
    end
    H(i) = count;
end

disp(H == 3);


%%



% gerar palavras
x = randi(1,0);

k = 6;
n = 100000;
BF = Init(n);
for i = 1:length(CH1)
    BF = AddElement(BF,CH1{i},k);
end

falsosPos = 0;
for i=1:100000
    if membro(BF,dicionario{i},k)
        falsosPos = falsosPos + 1;
    end
end
percFP = 100*falsosPos/m2;
fprintf('Falsos positivos: %.2f\n',percFP);



function BF= Init(n)
    BF= zeros(n,1);
end

function BF= AddElement(BF,chave,k)
    h= 127;
    chave= double(chave);
    nBF= length(BF);
    for i= 1:length(chave)
        h= mod(31*h+chave(i),2^32-1);
    end
    for i= k:-1:1
        h= mod(31*h+i,2^32-1);
        BF(mod(h,nBF)+1)= 1;
    end
end

function member= IsMember(BF,chave,k)
    member = true;
    h= 127;
    chave= double(chave);
    nBF= length(BF);
    for i= 1:length(chave)
        h= mod(31*h+chave(i),2^32-1);
    end
    for i= k:-1:1
        h= mod(31*h+i,2^32-1);
        % Se para as posições mapeadas pela fc de dispersao o valor for 0
        % entao o elemento nao pertence ao BF
        if(BF(mod(h,nBF)+1) == 0)
            member = false;
            break;
        end
    end
end

