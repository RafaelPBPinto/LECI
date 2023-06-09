//Author: Rafael Pinto, 103379, p5_09

package ex3;

public class RemoveCommand<E> implements Command<E> {
    private Receiver<E> receiver;

    public RemoveCommand(Receiver<E> receiver) {
        this.receiver = receiver;
    }

    public void execute(E element) {
        receiver.remove(element);
    }

    public void undo() {
        receiver.undo();
    }
}
