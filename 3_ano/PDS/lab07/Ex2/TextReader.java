//Author: Rafael Pinto, 103379, p5_09

package Ex2;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class TextReader implements TextReaderInterface {
    private Scanner fileScanner;

    public TextReader(String fileName) {
        try {
            fileScanner = new Scanner(new File(fileName));
        } catch (FileNotFoundException e) {
            System.out.println("File not found!");
        }
    }

    public boolean hasNext() {
        return fileScanner.hasNext();
    }

    @Override
    public String next() {
        return fileScanner.nextLine();
    }
}
