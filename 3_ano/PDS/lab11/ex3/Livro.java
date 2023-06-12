package ex3;

public class Livro {
    private String titulo;
    private int ISBN;
    private int ano;
    private String autor;
    private State current_state;

    public Livro(String titulo, int ISBN, int ano, String autor) {
        this.titulo = titulo;
        this.ISBN = ISBN;
        this.ano = ano;
        this.autor = autor;
        this.current_state = new Inventario();
    }

    public int getISBN() {
        return this.ISBN;
    }

    public void setState(State state) {
        this.current_state = state;
    }

    public void regista() {
        current_state.regista(this);
    }

    public void requisita() {
        current_state.requisita(this);
    }

    public void cancelaReserva() {
        current_state.cancelaReserva(this);
    }

    public void reserva() {
        current_state.reserva(this);
    }

    public void devolve() {
        current_state.devolve(this);
    }

    @Override
    public String toString() {
        return this.ISBN + "\t" + this.titulo + "\t" + this.ano + "\t" + this.autor + "\t[" + this.current_state + "]";
    }
}
