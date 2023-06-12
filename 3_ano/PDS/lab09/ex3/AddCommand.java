//Author: Rafael Pinto, 103379, p5_09

package ex3;

public class AddCommand<E> implements Command<E> {
    private Receiver<E> receiver;

    public AddCommand(Receiver<E> receiver) {
        this.receiver = receiver;
    }

    public void execute(E element) {
        receiver.add(element);
    }

    public void undo() {
        receiver.undo();
    }
}
