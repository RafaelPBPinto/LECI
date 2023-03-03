load data;

user_id = input("Insert User ID (1 to 943): ");

while true
    fprintf("1 - Your movies\n");
    fprintf("2 - Suggestion of movies based on other users\n");
    fprintf("3 - Suggestion of movies based on already evaluated movies\n");
    fprintf("4 - Movies feedback based on popularity\n");
    fprintf("5 - Exit\n");
    option = input('Select choice: ');

    switch option
        case 1
            movies = getMovies(user_id,Set);
            for i = 1:length(movies)
                fprintf('%d - %s\n',movies(i),dic{movies(i),1});
            end
        case 2
            
        case 3
    
        case 4
    
        case 5
            break
    
        otherwise
            fprintf('Invalid option\n');
    end
end

function movies = getMovies(id,Set)
    movies = {};
    for i = 1:length(Set)
        if Set{i}(1) == id
            movies = Set{i}(2:end);
        end
    end
end