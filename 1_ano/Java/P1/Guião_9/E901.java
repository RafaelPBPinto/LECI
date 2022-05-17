import java.util.Scanner;

public class E901{
	static final Scanner sc = new Scanner(System.in);
  
	public static void main(String[] args) {
		
		String frase;
		int min = 0;
		int max = 0;
		int num = 0;
		int vogal = 0;
		int consoante = 0;
		
		System.out.println("Análise de uma frase");
		
		System.out.print("Frase -> ");
		frase = sc.nextLine();
		
		for(int i = 0; i < frase.length(); i++){
			
			if(Character.isUpperCase(frase.charAt(i))){
				
				max++;
				
			}else if(Character.isLowerCase(frase.charAt(i))){
				
				min++;
				
			}else if(Character.isDigit(frase.charAt(i))){
				
				num++;
				
			}else if(isVowel(frase.charAt(i)) == true){
				
				vogal++;
				
			}else if(isVowel(frase.charAt(i)) == false){
				
				consoante++;
				
			}
		}
		
		System.out.printf("\nNúmero de caracteres minúsculos -> %d", min);
		System.out.printf("\nNúmero de caracteres maiúsculos -> %d", max);
		System.out.printf("\nNúmero de caracteres numéricos -> %d", num);
		System.out.printf("\nNúmero de vogais -> %d", vogal);
		System.out.printf("\nNúmero de consoantes -> %d", consoante);
		
	}
	
	public static boolean isVowel(char c){
		
		boolean vogal;
		
		if(c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u'){
			
			vogal = true;
			
		}else{
			
			vogal = false;
			
		}
		
		return vogal;
	}
}
