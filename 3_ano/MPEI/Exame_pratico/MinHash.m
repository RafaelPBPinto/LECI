%%
% Matriz de assinaturas com os vectores MinHash correspondente ao conjunto de filmes 
% avaliados por cada utilizador

num_hash_functs = 100;
MinHashSig_user_films = inf(length(users), num_hash_functs);
for i = 1:length(users)
    % conjunto de filmes avaliados pelo utilizador i
    set = films_by_user_set{i};
 
    for j = 1:length(set)
        key = set(j);
        hash = zeros(1, num_hash_functs);
        for k = 1:num_hash_functs
            key = [key num2str(k)];
            hash(k) = DJB31MA(key, 127);
        end
        MinHashSig_user_films(i, :) = min([MinHashSig_user_films(i, :); hash]);
    end
end

%%
% Matriz de assinaturas com os vectores MinHash associados aos títulos dos filmes

shingle_size = 3;
num_hash_functs = 150;
MinHashSig_films_title = inf(length(dic), num_hash_functs);

for i = 1:length(dic)
    set = lower(dic{i,1});
    shingles = {length(set)};
    % Criação de shingle para cada filme
    for j = 1:length(set) - shingle_size + 1
        shingles{j} = set(j:j+shingle_size-1);
    end

    for j = 1:length(shingles)
        key = char(shingles{j});
        hash = zeros(1, num_hash_functs);
        for k = 1:num_hash_functs
            key = [key num2str(k)];
            hash(k) = DJB31MA(key, 127);
        end
        MinHashSig_films_title(i, :) = min([MinHashSig_films_title(i, :); hash]);
    end

end