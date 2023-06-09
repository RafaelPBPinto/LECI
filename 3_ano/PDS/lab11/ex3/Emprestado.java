package ex3;

public class Emprestado implements State {
    public void regista(Livro l) {
        System.out.println("Operação inválida");
    }

    public void reserva(Livro l) {
        System.out.println("Operação inválida");
    }

    public void cancelaReserva(Livro l) {
        System.out.println("Operação inválida");
    }

    public void devolve(Livro l) {
        l.setState(new Disponivel());
        System.out.println("Livro devolvido!");
    }

    public void requisita(Livro l) {
        System.out.println("Operação inválida");
    }

    @Override
    public String toString(){
        return "EMPRESTADO";
    }
}