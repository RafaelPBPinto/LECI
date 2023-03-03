%% Load films.txt
dic = readcell('films.txt','Delimiter','\t');

%% Load udata
udata = load('u.data');
% obter as duas primeiras colunas 
u= udata(1:end,1:2); clear udata;

%% Lista de utilizadores
users = unique(u(:,1)); % IDs dos utilizadores
Nu = length(users); % Numero de utilizadores

%% Lista de filmes para cada utilizador
Set= cell(Nu,1);
for n = 1:Nu 
    films = find(u(:,1) == users(n));
    Set{n} = [Set{n} u(films,2)];
end

%% 
% MinHash correspondente ao conjunto de filmes 
% avaliados por cada utilizador

%TODO

%% 
% MinHash correspondente ao conjunto de géneros 
% cinematográficos de cada filme

%TODO

%%
% MinHash associados aos títulos dos filmes

%TODO

%%
% Counting Bloom Filter 

%TODO

save 'data' 'dic' 'users' 'Nu' 'Set'