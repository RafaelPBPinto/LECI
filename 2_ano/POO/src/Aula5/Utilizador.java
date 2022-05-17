package Aula5;
import java.util.ArrayList;

public class Utilizador {
    private String nome;
    private int nMec;
    private String curso;
    private static ArrayList<Integer> livrosReq = new ArrayList<>(3);
    private static int countlivrosReq = 0;

    public Utilizador(String newNome, int newNMec, String newCurso){
        assert validNMec(newNMec): "nmec invalido!";
        if(validNMec(newNMec)){
            this.nome = newNome;
            this.nMec = newNMec;
            this.curso = newCurso;
        }else{
            System.out.println("nmec invalido!");
        }
    }

    private boolean validNMec(int nmec){
        return nmec >= 0;
    }

    public String getNome(){
        return nome;
    }

    public int getnMec(){
        return nMec;
    }

    public String getCurso(){
        return curso;
    }

    public void setnMec(int nmec){
        assert validNMec(nmec): "nmec invalido!";
        if(validNMec(nmec)){
            this.nMec = nmec;
        }else{
            System.out.println("nmec invalido!");
        }
    }

    public void setNome(String nome){
        this.nome = nome;
    }

    public void setCurso(String curso){
        this.curso = curso;
    }

    @Override
    public String toString(){
        return String.format("Aluno: %d; %s; %s", nMec, nome, curso);
    }

    public void requisitarLivro(int id){
        if( countlivrosReq < 3){
            livrosReq.add(id);
            countlivrosReq++;
        }else{
            System.out.println("Aluno tem 3 livros em sua posse!");
        }
    }

    public void devolverLivro(int id){
        boolean removeu = false;
        for(int i=0; i < livrosReq.size(); i++){
            if(livrosReq.get(i) == id){
                livrosReq.remove(i);
                removeu = true;
                countlivrosReq--;
            }
        }
        if(!removeu){
            System.out.println("Aluno nao requisitou este livro");
        }
    }

}
