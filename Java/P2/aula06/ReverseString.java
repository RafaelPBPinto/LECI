import static java.lang.System.*;

public class ReverseString {

  public static void main(String[] args) {
    if (args.length == 0) {
			System.out.println("Precisa de argumentos");
			System.exit(1);
		} else {
			for (int i = 0; i < args.length; i++) {
				System.out.println(reverseString(args[i], args[i].length()));
			}
		}
  }
  
  /** Inverte a String. */
  public static String reverseString(String palavra, int N) {
    // Implemente de forma recursiva...
    if (N >= 2){
		String rez = palavra.charAt(N-1) + reverseString(palavra, N-1);
		return rez;
	} else {
		return ("" + palavra.charAt(0));
    }
    
  }

}