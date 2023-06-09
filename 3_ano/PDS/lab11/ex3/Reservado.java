package ex3;

public class Reservado implements State {
    public void regista(Livro l) {
        System.out.println("Operação inválida");
    }

    public void reserva(Livro l) {
        System.out.println("Operação inválida");
    }

    public void cancelaReserva(Livro l) {
        l.setState(new Disponivel());
        System.out.println("Reserva Cancelada!");
    }

    public void devolve(Livro l) {
        System.out.println("Operação inválida");
    }

    public void requisita(Livro l) {
        System.out.println("Operação inválida");
    }

    @Override
    public String toString(){
        return "RESERVADO";
    }
}
