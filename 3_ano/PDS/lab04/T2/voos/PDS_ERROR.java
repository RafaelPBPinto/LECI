package lab03.voos;

public class PDS_ERROR {
    
    public static void InvalidArguments(String usage) {
        System.err.println("[ERROR]: Invalid arguments");
        System.err.println("Usage: " + usage);
        System.exit(2);
    }

    public static void InvalidFileName(String fileName) {
        System.err.println("[ERROR] Invalid file name: " + fileName);
        System.exit(3);
    }

    public static void InvalidUserInput(String userInput) {
        System.err.println("[ERROR] Invalid user input: " + userInput);
    }
}
