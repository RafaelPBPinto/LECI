package Aula8.A8E2;

public abstract class AlimentoVegetariano extends Alimento {
    private String nome;

    public AlimentoVegetariano(String newNome, double proteinas, double calorias, double peso){
        super(proteinas, calorias, peso);
        assert valid(newNome): "Nome invalido!";
        if(valid(newNome)){
            this.nome = newNome;
        }else{
            System.out.println("Nome invalido!");
        }
    }

    private boolean valid(String nome){
        if(nome.isEmpty())
            return false;
        for(int i = 0; i < nome.length(); i++){
            if(Character.isDigit(nome.charAt(i)))
                return false;
        }
        return true;
    }

    public String getNome(){
        return nome;
    }

    public void setNome(String nome){
        assert valid(nome): "Nome invalido!";
        if(valid(nome)){
            this.nome = nome;
        }else{
            System.out.println("Nome invalido!");
        }
    }
}
