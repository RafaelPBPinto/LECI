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

N = 100000;
M = [0 0 0 0 0 1]';
count = 0;
k = ones(1,N);
for i = 1:N
    F = T;
    loops = 1;
    while F ~= M
        F = F^loops;
        loops = loops + 1;
    end
    k(i) = loops;
end


%% 
f1 = "Lisboa e Porto são duas cidades importantes de Portugal.";
f2 = "Lisboa é a capital de Portugal.";
f3 = "Porto é a capital do Norte de Portugal.";
f4 = "Portugal não é só Lisboa e Porto.";

dic = {f1, f2, f3, f4};

shingle_size = 3;
num_hash_functs = 4;
MinHash= inf(length(dic), num_hash_functs);

for i = 1:length(dic)
    set = lower(dic{i});
    shingles = {};
    % Criação de shingle para cada filme
    for j = 1:length(set) - shingle_size + 1
        shingles{j} = set(j:j+shingle_size-1);
    end

    for j = 1:length(shingles)
        hash = hf1(shingles{j}, num_hash_functs);
        MinHash(i, :) = min([MinHash(i, :); hash]);
    end

end
J = ones(1,length(dic));
for i = 1:length(dic)
    J(i) = sum(MinHash(i,:) ~= MinHash(frase,:))/num_hash_functs; % calcula a distancia de Jaccard entre o utilizador e os outros
end

x = randi(1,27);

k = 6;
n = 100000;
BF = Init(n);
for i = 1:x
    BF = AddElement(BF,x(i),k);
end

falsosPos = 0;
for i=1:100000
    if membro(BF,x(i),k)
        falsosPos = falsosPos + 1;
    end
end

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

