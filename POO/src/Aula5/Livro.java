package Aula5;

public class Livro {
    private static int idcounter = 100;
    private int id;
    private String titulo;
    private String tipoEmprestimo;
    private boolean disponivel;

    public Livro(String newTitulo, String newTipoEmprestimo){
        assert validTipoEmprestimo(newTipoEmprestimo): "Tipo de Emprestimo invalido!";
        this.id = generateId();
        if(validTipoEmprestimo(newTipoEmprestimo) && validID()){
            this.titulo = newTitulo;
            this.tipoEmprestimo = newTipoEmprestimo;
            if(newTipoEmprestimo.equals("CONDICIONAL")){
                this.disponivel = false;
            }else{
                this.disponivel = true;
            }
        }else{
            System.out.println("Parametros invalidos!");
        }
        assert validID(): "ID invalido!";
    }

    public Livro(String newTitulo){
        this.id = generateId();
        this.titulo = newTitulo;
        this.tipoEmprestimo = "NORMAL";
        this.disponivel = true;
        assert validID(): "ID invalido!";
    }

    private boolean validID(){
        return id >= 100;
    }

    private boolean validTipoEmprestimo(String tipoEmprestimo){
        return tipoEmprestimo.equals("CONDICIONAL") || tipoEmprestimo.equals("NORMAL");
    }

    private int generateId(){
        id = idcounter;
        idcounter++;
        return id;
    }

    public int getId(){
        return id;
    }

    public String getTitulo(){
        return titulo;
    }

    public String getTipoEmprestimo(){
        return tipoEmprestimo;
    }

    public void setDisponivel(boolean disponibilidade){
        this.disponivel = disponibilidade;
    }
    
    public boolean disponivel(){
        return this.disponivel;
    }

    public void setTipoEmprestimo(String tipo){
        assert validTipoEmprestimo(tipo): "Tipo de emprestimo ivalido!";
        if(validTipoEmprestimo(tipo)){
            this.tipoEmprestimo = tipo;
        }else{
            System.out.println("Parametros invalidos!");
        }
        
    }

    @Override
    public String toString(){
        return String.format("Livro %d: %s; %s", id, titulo, tipoEmprestimo);
    }
}
