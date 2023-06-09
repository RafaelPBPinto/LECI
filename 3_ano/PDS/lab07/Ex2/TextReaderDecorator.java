//Author: Rafael Pinto, 103379, p5_09

package Ex2;

public class TextReaderDecorator implements TextReaderInterface {
    protected TextReaderInterface textReader;

    public TextReaderDecorator(TextReaderInterface textReader) {
        this.textReader = textReader;
    }

    public boolean hasNext() {
        return textReader.hasNext();
    }

    public String next() {
        return textReader.next();
    }
}
