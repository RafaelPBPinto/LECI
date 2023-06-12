// Author: Rafael Pinto, 103379, p5_09

package ListaContactos;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Scanner;
import java.util.List;
import java.util.ArrayList;

/*
 * Class FileUtils
 * Implements the methods to read and write files
 */
public class FileUtils {

    /*
     * Method readFile
     * Reads a file and returns a list of lines
     * @param pathname the path of the file
     * @return a list of lines
     */
    public static List<String> readFile(String pathname) {
        List<String> lines = new ArrayList<>();
        try {
            File file = new File(pathname);
            Scanner sc = new Scanner(file);
            while(sc.hasNextLine()){
                lines.add(sc.nextLine());
            }
            sc.close();            
        } catch (FileNotFoundException e) {
            System.out.println("File not found");
            System.exit(1);
        }
        return lines;
    }

    /*
     * Method writeFile
     * Writes a text to a file
     * @param filename the name of the file
     * @param text the text to be written
     */
    public static void writeFile(String filename, String text){
        File file = new File(filename);
        try {
            PrintWriter pw = new PrintWriter(file);
            pw.print(text);
            pw.close();
        } catch (FileNotFoundException e) {
            System.out.println("Could not create file");
            System.exit(1);
        }
    }
}
