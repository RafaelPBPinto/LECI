package Aula7;

public class Carro extends AgenciaDeViagens{
    private String classe;
    private String motor;
    private boolean disponibilidade;

    public Carro(String newClasse, String newMotor){
        assert valid(newClasse, newMotor): "Parametros invalidos!";
        if(valid(newClasse, newMotor)){
            this.classe = newClasse;
            this.motor = newMotor;
            this.disponibilidade = true;
            addViatura(this);
        }else{
            System.out.println("Parametros invalidos");
        }
    }

    private boolean valid(String classe, String motor){
        return ((classe.equals("A")) || (classe.equals("B")) || (classe.equals("C")) || (classe.equals("D")) || (classe.equals("E")) || (classe.equals("F")))
                    && ((motor.equals("gasolina")) || (motor.equals("diesel")) || (motor.equals("hibrido")) || (motor.equals("eletrico")));
    }

    public String getClasse(){
        return classe;
    }

    public String getMotor(){
        return motor;
    }

    public boolean getDisponibilidade(){
        return disponibilidade;
    }

    public void setClasse(String newClasse){
        assert valid(newClasse, motor): "Parametros invalidos!";
        if(valid(newClasse, motor)){
            this.classe = newClasse;
        }else{
            System.out.println("Parametros invalidos");
        }
    }

    public void setMotor(String newMotor){
        assert valid(classe, newMotor): "Parametros invalidos!";
        if(valid(classe, newMotor)){
            this.motor = newMotor;
        }else{
            System.out.println("Parametros invalidos");
        }
    }

    public void setDisponibilidade(boolean disp){
        this.disponibilidade = disp;
    }

    public void levantar(){
        if(this.disponibilidade == true){
            removeViatura(this);
            setDisponibilidade(false);
        }else{
            System.out.println("Veiculo Indisponivel!");
        }
    }

    public void entregar(){
        addViatura(this);
        setDisponibilidade(true);
    }

    @Override
    public String toString(){
        return String.format("Classe: %s\nMotor: %s\nDisponibilidade: %s\n", classe, motor, disponibilidade);
    }
}
