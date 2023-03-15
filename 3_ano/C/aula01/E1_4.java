import java.util.Scanner;
import java.io.File;
import java.util.Map;
import java.util.HashMap;
import java.io.FileNotFoundException;

public class E1_4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Scanner filScanner = null;
        try {
            filScanner = new Scanner(new File("./bloco1/numbers.txt"));
        } catch (FileNotFoundException e) {
            System.err.println("File not found");
            System.exit(1);
        }

        Map<String, Integer> numbers = new HashMap<>();
        while(filScanner.hasNextLine()){
            String line = filScanner.nextLine();
            Scanner lineScanner = new Scanner(line);

            int number = lineScanner.nextInt();
            lineScanner.next();
            String name = lineScanner.next();
            numbers.put(name, number);

            lineScanner.close();
        }

        String input = sc.nextLine();

        System.out.print("A list of numbers: ");
        Scanner scanner_input = new Scanner(input);

        while(!scanner_input.hasNext(":")){
            scanner_input.next();
        }
        scanner_input.next();

        while(scanner_input.hasNext()){
            if(scanner_input.hasNext("[a-zA-Z]+")){
                String var = scanner_input.next();
                if(numbers.containsKey(var)){
                    System.out.printf("%d ", numbers.get(var));
                } else {
                    System.err.print("Number not found");
                }
            }
        }
        System.out.println();
        
        scanner_input.close();
        sc.close();
    }
}

