import java.util.Scanner;

public class E902{
	static final Scanner sc = new Scanner(System.in);
  
	public static void main(String[] args) {
		
		String nome[] = new String[100];
		
		System.out.println("Programa para passar nomes para acrónimos. Para sair introduza 'f'.");
		System.out.println("-------------------------------------------------------------------");
		
		int k = 0;
		
		for(;k < nome.length; k++){
			
			System.out.printf("Nome %d: ", k+1);
			nome[k] = sc.nextLine();
			
			if(nome[k].charAt(0) == 'f'){
				break;
			}
			
		}
		
		for(int j = 0; j < k; j++){
			
			System.out.printf("\nacrónimo %d: ", j+1);
			acronimo(nome[j]);
			
		}
		
	}
	
	public static void acronimo(String nome){
		
		for(int i = 0; i < nome.length(); i++){
			
			if(Character.isUpperCase(nome.charAt(i))){
				
				System.out.print(nome.charAt(i));
				
			}
			
		}
		
	}
}
