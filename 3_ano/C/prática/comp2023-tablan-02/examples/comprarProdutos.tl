type table Produtos -> "Produtos" {
    codigo : integer -> "Codigo";
    nome : text -> "Nome";
};

type table Comprados {
    nome : text -> "Produtos";
};

--nome da pessoa, vindo do standard input
nomePessoa : text;
nomePessoa := read in "qual o seu nome:";

comprados : Comprados;
comprados := new;

--definir o header com o nome da pessoa
comprados -> "Produtos de " + nomePessoa;

produtos : Produtos;
produtos := new;

--adicionar produtos à tabela
[1,"Pera"] >> produtos;
[2,"Maca"] >> produtos;
[3,"Abacate"] >> produtos;
[4,"Laranja"] >> produtos;

selecionado : integer;
selecionado := -1;

println produtos;
println "selecione os seus produtos";
println "prima 0 quando terminar de escolher";

--pede produtos ate o utilizador meter 0
while selecionado != 0 do
    --pedir opcao ao utilizador
    selecionado := integer(read in "codigo:");
    --opcao invalida
    if selecionado > 4 or selecionado < 0
        println "codigo invalido!";
    else if selecionado != 0 
            --procurar opcao na tabela de produtos e guardar o nome na tabela do utilizador
            for prod in produtos do
                if prod.codigo = selecionado
                    [prod.nome] >> comprados;
                end;
            end;
        end;
    end;
end;

--mostrar os produtos escolhidos pelo utilizador
println comprados;