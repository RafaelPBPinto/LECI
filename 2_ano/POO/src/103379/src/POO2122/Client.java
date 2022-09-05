package POO2122;

public class Client {
    private String nome;
    private String localidade;

    public Client(String nome, String localidade){
        this.nome = nome;
        this.localidade = localidade;
    }

    public String getNome(){
        return nome;
    }

    public String getLocalidade(){
        return localidade;
    }

    @Override
    public String toString(){
        return String.format("%s [%s]\n", nome, localidade);
    }
}
