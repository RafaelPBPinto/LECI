import static java.lang.System.*;
import p2utils.*;

public class Palindrome {
    public static void main(String[] args){
        if (args.length < 1) {
            out.println("Usage: java -ea Palindrome <text>");
        }else {
            String word = concatenate(args);
            Queue fila = new Queue();
            Stack pilha = new Stack();

            for	(int i = 0; i < word.length(); i++){
				fila.in(word.charAt(i));
				pilha.push(word.charAt(i));
			}
        

            boolean palindrome = true;

            for (int i = 0; i < pilha.size(); i++){
			    palindrome = (fila.peek() == pilha.top());
			    pilha.pop();
			    fila.out();
			    if (!palindrome) {
                    out.printf("%s não é um palíndromo.\n", word);
				    break;
			    }
		    }

            if(palindrome){
                out.printf("%s é um palíndromo!\n", word);
            }   

		
        }
    }
    public static String concatenate(String[] words){
	    String pl = "";
	    for	(int i = 0; i < words.length; i++) {
		    pl += words[i];
	    }
	    return pl.toLowerCase();
    }
}
    