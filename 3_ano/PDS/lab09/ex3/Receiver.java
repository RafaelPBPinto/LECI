//Author: Rafael Pinto, 103379, p5_09

package ex3;
import java.util.Collection;
import java.util.Stack;

public class Receiver<E> {
    private Collection<E> collection;
    private Stack<String> lastCommandStack = new Stack<String>();
    private Stack<E> undoStack = new Stack<E>();
    private boolean canUndo = false;

    public Receiver(Collection<E> collection) {
        this.collection = collection;
    }

    public void add(E element) {
        collection.add(element);
        lastCommandStack.push("add");
        undoStack.push(element);
        canUndo = true;
    }

    public void remove(E element) {
        collection.remove(element);
        lastCommandStack.push("remove");
        undoStack.push(element);
        canUndo = true;
    }

    public void undo() {
        if (canUndo) {
            String lastCommand = lastCommandStack.pop();
            E lastElement = undoStack.pop();
            if (lastCommand.equals("add")) {
                collection.remove(lastElement);
            } else if (lastCommand.equals("remove")) {
                collection.add(lastElement);
            }
            if (lastCommandStack.isEmpty() || undoStack.isEmpty()) {
                canUndo = false;
            }
        }
    }
}
