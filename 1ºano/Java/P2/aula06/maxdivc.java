import static java.lang.System.*;
import java.util.Arrays;
import java.util.*;

public class maxdivc{
    static Scanner k = new Scanner(System.in);
    public static void main(String[] args){
        System.out.println("Máximo divisor comum");
        System.out.println("--------------------");
        int a,b;
    
        System.out.print("a: ");
        a = k.nextInt();

        System.out.print("b: ");
        b = k.nextInt();

        assert a > 0;
        assert b > 0;

        System.out.println("mdc: " + mdc(a,b));
    }

    public static int mdc(int a, int b){
        int c;

        if(b == 0){
            c = a;
        }else{
            c = mdc(b,a % b); 
        } 
        return c;
    }
}