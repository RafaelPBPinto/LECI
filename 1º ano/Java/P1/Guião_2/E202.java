import java.util.*;

public class E202{
	static Scanner k = new Scanner(System.in);
	public static void main (String args[]){
		int num1, num2;
		
		System.out.println("Programa que diz qual é o maior número introduzido no terminal");
		System.out.println("--------------------------------------------------------------");
		
		System.out.println();
		
		System.out.print("Número inteiro 1: ");
		
		num1 = k.nextInt();
		
		System.out.print("Número inteiro 2: ");
		
		num2 = k.nextInt();
		
		if(num1 > num2){
			
			System.out.printf(" %d > %d ", num1, num2);
			
		}
		
		else if(num1 < num2){
			
			System.out.printf(" %d < %d ", num1, num2);
			
		}
		
		else if(num1 == num2){
			
			System.out.printf(" %d = %d ", num1, num2);
				
			}
	}
}
