import java.util.*;

public class E204{
	static Scanner k = new Scanner(System.in);
	public static void main (String args[]){
		
		int mes, ano;
		int dias;
		
		System.out.println("Programa para determinar o números de dias de um mês");
		System.out.println("----------------------------------------------------");
		
		System.out.println();
		
		System.out.print("Mês (1-12): ");
		
		mes = k.nextInt();
		
		System.out.print("Ano : ");
		
		ano = k.nextInt();
		
		if(mes == 1 || mes == 3 || mes == 5 || mes == 7 || mes == 8 || mes == 10 || mes == 12){
			
			System.out.printf("O mês %d do ano %d tem 31 dias", mes, ano);
		}
		
		else if(mes == 4 || mes == 6 || mes == 9 || mes == 11){
			
			System.out.printf("O mês %d do ano %d tem 30 dias", mes, ano);
		}

		else if(mes == 2 && ano % 4 == 0){
			
			System.out.printf("O mês %d do ano %d tem 29 dias",mes, ano);
			
		}
		
		else if(mes == 2 && ano % 4 != 0){
			
			System.out.printf("O mês %d do ano %d tem 28 dias",mes, ano);
			
		}		
	}
}
	
