import java.util.*;

public class E1021{
	static Scanner k = new Scanner(System.in);
	public static void main(String args[]){
		
		double x, dif;  
        double a = Math.random() * 20;  
        
        System.out.println("Computador vai gerar um número aleatório entre 0 e 20");
        System.out.println("-----------------------------------------------------");
        
        System.out.println("Tenta ficar o mais próximo possível do número gerado pelo computador!!!!");
        
        System.out.print("Número de 0 a 20: ");
        
        x = k.nextDouble();
        
        if(x >= 0 || x <= 20){
			
			System.out.println(a);
			
			dif = x - a;
			
			System.out.printf("diferença: %4.2f", dif);
			
		}else{
			
			System.out.print("Número inválido. Insira um número entre 0 e 20: ");
			
			x = k.nextDouble();
		}  
        
	}
}
