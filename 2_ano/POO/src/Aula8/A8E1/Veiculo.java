package Aula8.A8E1;

public abstract class Veiculo implements KmPercorridosInterface {
    private String matricula;
    private String marca;
    private String modelo;
    private int potencia;

    private int ultimoTrajeto;
    private int distanciaTotal = 0;
    
    protected Veiculo(String newMatricula, String newMarca, String newModelo, int newPotencia){
        assert validVeiculo(newMatricula, newMarca, newModelo, newPotencia): "Parametros invalidos!";
        if(validVeiculo(newMatricula, newMarca, newModelo, newPotencia)){
            this.matricula = newMatricula;
            this.marca = newMarca;
            this.modelo = newModelo;
            this.potencia = newPotencia;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    public String getMatricula(){
        return matricula;
    }

    public String getMarca(){
        return marca;
    }

    public String getModelo(){
        return modelo;
    }

    public int getPotencia(){
        return potencia;
    }

    public void setMatricula(String newMatricula){
        assert validVeiculo(newMatricula, marca, modelo, potencia): "Matricula invalida!";
        if(validVeiculo(newMatricula, marca, modelo, potencia)){
            this.matricula = newMatricula;
        }else{
            System.out.println("Matricula invalida!");
        }
    }

    public void setMarca(String newMarca){
        assert validVeiculo(matricula, newMarca, modelo, potencia): "Marca invalida!";
        if(validVeiculo(matricula, newMarca, modelo, potencia)){
            this.marca = newMarca;
        }else{
            System.out.println("Marca invalida!");
        }
    }

    public void setModelo(String newModelo){
        assert validVeiculo(matricula, marca, newModelo, potencia): "Modelo invalido!";
        if(validVeiculo(matricula, marca, newModelo, potencia)){
            this.modelo = newModelo;
        }else{
            System.out.println("Modelo invalido!");
        }
    }

    public void setPotencia(int newPotencia){
        assert validVeiculo(matricula, marca, modelo, newPotencia): "Potencia invalida!";
        if(validVeiculo(matricula, marca, modelo, newPotencia)){
            this.potencia = newPotencia;
        }else{
            System.out.println("Potencia invalida!");
        }
    }

    private boolean validVeiculo(String matricula, String marca, String modelo, int potencia){
        return validMatricula(matricula) && !marca.equals("") && !modelo.equals("") && (potencia > 0);
    }

    private boolean validMatricula(String matricula){
        if(matricula.length() != 8 || matricula.charAt(2) != '-' || matricula.charAt(5) != '-'){
            return false;
        }

        int numeros = 0;
        int letras = 0;

        for (int i = 0; i < matricula.length(); i++) {
            if (Character.isLetter(matricula.charAt(i))) {
                if (matricula.charAt(i) == (matricula.toUpperCase().charAt(i))) {
                    ++letras;
                    continue;
                }
            }
            if (Character.isDigit(matricula.charAt(i))) {
                ++numeros;
            }
            if (i == 2) {
                if (numeros != 2 && letras != 2) {
                    return false;
                }
            }
            if (i == 4) {
                if ((numeros != 2 || letras != 2) && (numeros != 4)) {
                    return false;
                }
            }

        }
        if ((numeros == 4 && letras == 2) || (numeros == 2 && letras == 4)) {
            return true;
        }else{
            return false;
        } 
    }
    
    public void trajeto(int quilometros){
        this.ultimoTrajeto = quilometros;
        distanciaTotal += quilometros;
    }

    public int ultimoTrajeto(){
        return ultimoTrajeto;
    }

    public int distanciaTotal(){
        return distanciaTotal;
    }

    @Override
    public abstract String toString();
}
