import java.util.*;

public class E601{
	static Scanner k = new Scanner(System.in);
	public static void main(String args[]){
		int n;
		
		System.out.println("Programa que lê N números inteiros");
		System.out.println("----------------------------------");
		
		System.out.print("N: ");
		
		n = k.nextInt();
		
		int num[] = new int[n+1];
		
		for(int i = 0; i < n; i++){
			
			System.out.printf("Número %d: ",i + 1);
			
			num[i] = k.nextInt();
		}
		
		System.out.println();
			
			for(int j = n - 1; j >=0; j--){
				
				System.out.println(num[j]);
				
			}
			
		}
}



