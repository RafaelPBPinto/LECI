U1 = fopen("wordlist-preao-20201103.txt", "r");
n = 8000;
k = 3;
B = inicializar(n);

for i=1:size(U1)
    adicionarElemento(B,U1(i),k);
end

for i=1:size(U1)
    membro(B,U1(i),k);
end

%% inicializar
function B = inicializar(size)
    B = zeros(size);
end

%% adicionar elemento

function B = adicionarElemento(B, elemento, k)
    for i=1:k
        h = DJB31MA(elemento, 127);
        B(h) = 1;
    end
end

%% membro 
function isMembro = membro(B, elemento, k)
    i=0;
    while i ~= k || B(h) ~= 0
        i = i+1;
        h = DJB31MA(elemento, 127);
    end

    if i== k
        isMembro = true;
    else
        isMembro = false;
    end
end

%%
function h= DJB31MA( chave, seed)
% implementação da hash function DJB31MA com base no algoritmo obtido
% no resumo 2014(PJF) que está em C
%
%  chave    array de caracteres com a chave
%  seed     semente que permite obter vários hash codes para a mesma chave
%
%  h        hashcode devolvido
len= length(chave);
chave= double(chave);
h= seed;
for i=1:len
    h = mod(31 * h + chave(i), 2^32 -1) ;
end
end