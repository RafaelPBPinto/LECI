import java.util.Scanner;

public class E903{
	static final Scanner sc = new Scanner(System.in);
  
	public static void main(String[] args) {
		
		String frase;
		int palavras;
		
		System.out.print("frase -> ");
		
		frase = sc.nextLine();
		
		palavras = countWords(frase);
		
		System.out.printf("\nNº de palavras -> %d", palavras);
		
	}
	
	public static int countWords(String frase){
		
		int count = 1;
		
		for(int i = 0; i < frase.length(); i++){
			
			if(frase.charAt(i) == ' '){
				
				if(frase.charAt(i+1) != ' '){
					
					count++;
					
				}
				
			}	
		}
		
		return count;
	}
}
