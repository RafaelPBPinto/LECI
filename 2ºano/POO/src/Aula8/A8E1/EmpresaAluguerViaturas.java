package Aula8.A8E1;
import java.util.ArrayList;

public class EmpresaAluguerViaturas {
    private String nome;
    private String codigoPostal;
    private String email;
    private static ArrayList<Veiculo> viaturas = new ArrayList<>();

    public EmpresaAluguerViaturas(String newNome, String newCodigoPostal, String newEmail){
        assert valid(newNome, newCodigoPostal, newEmail): "Parametros invalidos!";
        if(valid(newNome, newCodigoPostal, newEmail)){
            this.nome = newNome;
            this.codigoPostal = newCodigoPostal;
            this.email = newEmail;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    private boolean valid(String nome, String codigoPostal, String email){
        return !nome.equals("") && validCodigoPostal(codigoPostal) && validEmail(email);
    }

    private boolean validCodigoPostal(String codigoPostal){
        if(codigoPostal.length() < 8 || codigoPostal.charAt(4) != '-' || codigoPostal.charAt(8) != ' '){
            return false;
        }
        int numeros = 0;

        for(int i = 0; i < codigoPostal.length(); i++){
            if(Character.isDigit(codigoPostal.charAt(i))){
                numeros++;
            }
            if(i < 8 && i != 4){
                if(!Character.isDigit(codigoPostal.charAt(i))){
                    return false;
                }
            }
        }

        if(numeros == 7){
            return true;
        }else{
            return false;
        }


    }
    
    private boolean validEmail(String email){
        String ePattern = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$";
        java.util.regex.Pattern p = java.util.regex.Pattern.compile(ePattern);
        java.util.regex.Matcher m = p.matcher(email);
        return m.matches();
    }

    public String getNome(){
        return nome;
    }

    public String getCodigoPostal(){
        return codigoPostal;
    }

    public String getEmail(){
        return email;
    }

    public void setNome(String newNome){
        assert valid(newNome, codigoPostal, email): "Parametros invalidos!";
        if(valid(newNome, codigoPostal, email)){
            this.nome = newNome;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    public void setCodigoPostal(String newCodigoPostal){
        assert valid(nome, newCodigoPostal, email): "Parametros invalidos!";
        if(valid(nome, newCodigoPostal, email)){
            this.codigoPostal = newCodigoPostal;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    public void setEmail(String newEmail){
        assert valid(nome, codigoPostal, newEmail): "Parametros invalidos!";
        if(valid(nome, codigoPostal, newEmail)){
            this.email = newEmail;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    public void addVeiculo(Veiculo v){
        viaturas.add(v);
        if(viaturas.size() >= 2)
            ordernar();
    }

    public void removeVeiculo(Veiculo v){
        viaturas.remove(v);
        if(viaturas.size() >= 2)
            ordernar();
    }

    public void listVeiculos(){
        for(Veiculo v : viaturas){
            System.out.print(v);
        }
    }
    
    public Veiculo maisKm(){
        int maisKmIndex = 0;
    
        for(int i = 1; i < viaturas.size(); i++){
            if(viaturas.get(i).distanciaTotal() > viaturas.get(maisKmIndex).distanciaTotal()){
                maisKmIndex = i;
            }
        }
        return viaturas.get(maisKmIndex);
    }

    private void ordernar(){
        for(int i = 0; i < viaturas.size() - 1; i++){
            if(viaturas.get(i).getPotencia() > viaturas.get(i+1).getPotencia()){
                Veiculo aux = viaturas.get(i);
                viaturas.set(i, viaturas.get(i+1));
                viaturas.set(i+1, aux);
            }
        }
    }


    @Override
    public String toString(){
        return String.format("\n%s\n%s\n%s\nNumero de viaturas: %d\n", nome, codigoPostal, email, viaturas.size());
    }
}
