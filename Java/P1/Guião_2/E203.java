import java.util.*;

public class E203{
	static Scanner k = new Scanner(System.in);
	public static void main (String args[]){
		int idade;
		
		System.out.println("Programa Bilheteira");
		System.out.println("-------------------");
		
		System.out.println();
		
		System.out.print("Idade: ");
		
		idade = k.nextInt();
		
		System.out.println();
		
		if(idade > 0 && idade < 6){
			
			System.out.println("Isento de pagamento");
			
			}
			
			else if(idade >= 6 && idade <= 12){
				
				System.out.println("Bilhete de criança");
				
				}
				
				else if(idade >= 13 && idade <= 65){
					
					System.out.println("Bilhete normal");
					
					}
					
					else if(idade > 65){
						
						System.out.println("Bilhete de 3ª idade");
						}
						
						else{
							
							System.out.println("Idade inválida");
							
						}
		
	}
}
