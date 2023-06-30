type table Pautas -> "Pautas" {
    nome : text -> "Nome";
    teorico : real -> "Teorico";
    pratico : real -> "Pratico";
    notaFinal : real := teorico * 0.4 + pratico * 0.6; -- nao se pode chamar final, por causa da keyword do java
};

p : Pautas;
--ler pautas do ficheiro pautas
p := read "../examples/pautas.csv" using column 1 as nome, column 2 as teorico, column 3 as pratico;

--redefinir o header de nota final
p.notaFinal -> "Nota final";

--alunos que passaram
passados : Pautas;

--apenas mostra os alunos da pauta que tiveram nota final > 9.5
passados := p when notaFinal >= 9.5;

reprovados : Pautas;
reprovados := p when notaFinal < 9.5;

reprovados -> "Alunos reprovados";
passados -> "Alunos passados";

println p;
println reprovados;
println passados;
