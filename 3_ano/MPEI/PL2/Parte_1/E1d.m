N = 1e5;
filhos = 2;

acontecimento = rand(2, N) > 0.5; 
prob_rapaz = sum(acontecimento); 

um_rapaz = sum(acontecimento(1,:)==1);
dois_rapazes = sum(prob_rapaz == 2);

p = (dois_rapazes)/(um_rapaz)

% ,: => fim da linha