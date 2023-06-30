type real Nota { invariant value >= 0 and value <= 20, "Invalid grade!"; }; -- only real number in [0,20]

type table Pautas -> "Pautas" {
    nome : text -> "Nome do aluno";

    --notas usando a nova definicao de Nota
    teorico: Nota -> "nota componente teorica";
    pratico: Nota -> "nota componente pratica";
    notaFinal: Nota := teorico * 0.5 + pratico * 0.5;

    --estado do aluno (passou/reprovou) com base na nota final
    estado: text := notaFinal > 9.5 ? "Passou" : "Nao passou";
};

p : Pautas;
p := new;

["Antonio",12,15.3] >> p;

["Maria",10,7.8] >> p;

["Manel",18,15.8] >> p;

println p;
