package Aula8.A8E2;

public class Ementa {
    private String nome;
    private String local;
    private Prato[][] pratos = new Prato[10][7];
    private int[] numPratos = {0, 0, 0, 0, 0, 0, 0};
    
    public Ementa(String nome, String local){
        assert valid(nome, local): "Parametros invalidos!";
        if(valid(nome, local)){
            this.nome = nome;
            this.local = local;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    private boolean valid(String nome, String local){
        return !nome.isEmpty() && !local.isEmpty();
    }

    private boolean contains(Prato p, DiaSemana d){
        for(int i = 0; i < numPratos[d.ordinal()]; i++){
            if(pratos[i][d.ordinal()] == p)
                return true;
        }
        return false;
    }

    public boolean addPrato(Prato p, DiaSemana d){
        if(!contains(p, d)){
            pratos[numPratos[d.ordinal()]][d.ordinal()] = p;
            numPratos[d.ordinal()]++;
            return true;
        }else{
            System.out.println("Prato já existente!");
            return false;
        }
    }

    public boolean removePrato(Prato p, DiaSemana d){
        if(contains(p, d)){
            pratos[numPratos[d.ordinal()]][d.ordinal()] = null;
            numPratos[d.ordinal()]--;
            return true;
        }else{
            System.out.println("Prato não existe!");
            return false;
        }
    }

    public String getNome(){
        return nome;
    }

    public String getLocal(){
        return local;
    }

    public Prato[][] getPratos(){
        return pratos;
    }

    public void setNome(String nome){
        assert valid(nome, local): "Parametros invalidos!";
        if(valid(nome, local)){
            this.nome = nome;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    public void setLocal(String local){
        assert valid(nome, local): "Parametros invalidos!";
        if(valid(nome, local)){
            this.local = local;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    @Override
    public String toString(){
        String string = "";
        for(int i = 0; i < 7; i++){
            for(int j = 0; j < numPratos[i]; j++){
                string += pratos[j][i];
                string += String.format(", dia %s\n", DiaSemana.values()[i]);
            }
        }
        return string;
    }

    @Override
    public int hashCode(){
        return nome.length() * 1500 / 2;
    }

    @Override
    public boolean equals(Object o){
        if(this == o)
            return true;
        if(o == null)
            return false;
        if(getClass() != o.getClass())
            return false;
        Ementa other = (Ementa) o;
        if(!nome.equals(other.getNome())){
            return false;
        }else if((local != other.getLocal()) || pratos != other.getPratos()){
            return false;
        }else{
            return true;
        }
    }
}