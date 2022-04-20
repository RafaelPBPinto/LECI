import java.util.Scanner;

public class TestaHora {
	static final Scanner sc = new Scanner(System.in);
  
	public static void main(String[] args) {
		Hora inicio;  // tem de definir o novo tipo Hora!
		Hora fim;
    
		inicio = new Hora();
		inicio.h = 9;
		inicio.m = 23;
		inicio.s = 5;
		
		System.out.print("Começou às ");
		printHora(inicio);  // crie esta função!
		System.out.println(".");
		System.out.println("Quando termina?");
	    fim=lerHora();  // crie esta função!
		System.out.print("Início: ");
		printHora(inicio);
		System.out.print(" Fim: ");
		printHora(fim);
	}
  
		 
	public static void printHora(Hora hora){
		
		System.out.printf("%d:%d:%d",hora.h,hora.m,hora.s);
		
	} 
	
	public static Hora lerHora(){
		Hora horafim = new Hora();
		
		
		do{
			
			System.out.print("hora? ");
			horafim.h = sc.nextInt();
			
		}while(horafim.h < 0 || horafim.h > 23);
		
		do{
			
			System.out.print("minutos? ");
			horafim.m = sc.nextInt();
			
		}while(horafim.m < 0 || horafim.m > 59);
		
		do{
			
			System.out.print("segundos? ");
			horafim.s = sc.nextInt();
			
		}while(horafim.s < 0 || horafim.s > 59);
		
		return horafim;
		
	}
	
	static class Hora{
	  
		int h;
		int m;
		int s;
	  
	}
	  

}

/**
EXEMPLO do pretendido:
$ java TestaHora
Começou às 09:23:05.
Quando termina?
horas? 11
minutos? 72
minutos? 7
segundos? 2
Início: 09:23:05 Fim: 11:07:02.
**/
