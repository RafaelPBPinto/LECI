package ex3;

public class Disponivel implements State {
    public void regista(Livro l) {
        System.out.println("Operação inválida");
    }

    public void reserva(Livro l) {
        l.setState(new Reservado());
        System.out.println("Livro Reservado!");
    }

    public void cancelaReserva(Livro l) {
        System.out.println("Operação inválida");
    }

    public void devolve(Livro l) {
        System.out.println("Operação inválida");
    }

    public void requisita(Livro l) {
        l.setState(new Emprestado());
        System.out.println("Livro Emprestado");
    }

    @Override
    public String toString(){
        return "DISPONIVEL";
    }
}
