import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import java.util.ArrayList;

public class WSSolver {
    public static void main(String[] args) throws IOException{
        File file = new File("WS.txt");
        Scanner sc = new Scanner(file);
        String[] lines = new String[100];
        int i = 0;
        while(sc.hasNextLine()){
            lines[i] = sc.nextLine();
            i++;
        }
        
        sc.close();
    }

    public boolean isSquare(String[] lines){
        int length = lines.length;
        for(int i = 0; i < length; i++){
            if(lines[i].length() != length){
                return false;
            }
        }
        return true;
    }
}
