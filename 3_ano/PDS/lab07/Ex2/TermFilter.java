//Author: Rafael Pinto, 103379, p5_09

package Ex2;

import java.util.Queue;
import java.util.LinkedList;

public class TermFilter extends TextReaderDecorator {
    private Queue<String> queue = new LinkedList<String>();

    public TermFilter(TextReaderInterface textReader) {
        super(textReader);
    }

    @Override
    public String next() {
        if (queue.isEmpty()) {
            String nextWord = super.next();
            String[] words = nextWord.split(" ");
            for (String word : words) {
                queue.add(word);
            }
        }
        if (!queue.isEmpty()) {
            return queue.poll();
        } else {
            System.out.println("No more words in the file");
            return "";
        }
    }
}
