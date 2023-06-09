package ex3;

public class Inventario implements State {
    public void regista(Livro l) {
        l.setState(new Disponivel());
        System.out.println("Livro registado!");
    }

    public void reserva(Livro l) {
        System.out.println("Operação inválida");
    }

    public void cancelaReserva(Livro l) {
        System.out.println("Operação inválida");
    }

    public void devolve(Livro l) {
        System.out.println("Operação inválida");
    }

    public void requisita(Livro l) {
        System.out.println("Operação inválida");
    }

    @Override
    public String toString(){
        return "INVENTARIO";
    }
}
