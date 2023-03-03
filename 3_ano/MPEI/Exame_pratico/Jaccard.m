%% Jaccard MinHash
function similar_users = getSimilarUsers(user_id, Nu, MinHashSig_user_films)
    num_hash_functs = 100; % numero de hash functions usadas em data.m
    J = ones(1, Nu); % vetor de similaridade entre o usuario e os outros
    h = waitbar(0, 'Calculating similarity...');
    for i = 1:Nu
        waitbar(i/Nu, h);
        if i ~= user_id
            J(i) = sum(MinHashSig_user_films(i,:) ~= MinHashSig_user_films(user_id,:))/num_hash_functs; % calcula a distancia de Jaccard entre o utilizador e os outros
        end
    end
    delete(h);
    
    similar_users = {2};
    for i=1:2
        [val, id] = min(J);
        similar_users{i} = id;
        J(id) = [];
    end
end

%% Jaccard

function J = jaccardDistance(users,Set)
    Nu = length(users);
    J=zeros(Nu); % array para guardar distancias
    h= waitbar(0,'Calculating');
    for n1 = 1:Nu
        waitbar(n1/Nu,h);
        for n2 = n1+1:Nu
            i = intersect(Set{n1},Set{n2});
            u = union(Set{n1},Set{n2});
            J(n1,n2) = 1 - (length(i) / length(u));
        end
    end
    delete (h)
end
