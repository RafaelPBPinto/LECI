type real Nota { invariant value >= 0 and value <= 20, "Invalid grade!"; }; -- only real number in [0,20]

type table Pautas -> "Pautas" {
    nome : text -> "Nome do aluno";
    teorico: real -> "nota componente teorica";
    pratico: real -> "nota componente pratica";
    notaFinal: real := teorico * 0.5 + pratico * 0.5;
    estado: text := notaFinal > 9.5 ? "Passou" : "Nao passou";
};

p : Pautas;
p := new;

--definir duas variaveis para representar o tipo Nota
teorico : Nota;
pratico : Nota;

--atribuir as notas respetivas e adicionar à tabela
teorico := 12;
pratico := 15.3;
["Antonio",teorico,pratico] >> p;

teorico := 10;
pratico := 7.8;
["Maria",teorico,pratico] >> p;

teorico := 18;
pratico := 15.8;
["Manel",teorico,pratico] >> p;

--notas invalidas, por isso ficam como undefined
teorico := 25;
pratico := 23;
["Ana",teorico,pratico] >> p;

println p;
