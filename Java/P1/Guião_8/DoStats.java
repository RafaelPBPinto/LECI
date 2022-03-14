import java.util.Scanner;

// Complete o programa
public class DoStats {
  static final Scanner sc = new Scanner(System.in);

  public static void main(String[] args) {
    // Cria um registo de estatisticas:
    Statistics xstat = new Statistics();

    // Enquanto houver um valor para ler:
    while (sc.hasNextDouble()) {
      // Lê um valor:
      double x = sc.nextDouble();
      // Atualiza o registo de estatisticas:
      updateStats(xstat, x);
    }

    // Escreve resultados:
    System.out.printf("numero de valores = %d\n", xstat.num);
    System.out.printf("soma dos valores = %f\n", xstat.sum);
    System.out.printf("soma dos quadrados = %f\n", xstat.sum2);
    if (xstat.num > 0) {
      System.out.printf("min = %f\n", xstat.min);
      System.out.printf("max = %f\n", xstat.max);
      System.out.printf("média = %f\n", mean(xstat));
    } else {
      System.out.printf("Lista vazia!");
    }
  }

  // Definir funções updateStats e mean!
  
 
  public static void updateStats(double x, Statistics lista){
	  
	  if(x > lista.max){
		  
		  lista.max = x;
	  }
	  
	  else if(x < lista.min){
		  
		  lista.min = x;
		  
	  }
	  
	  lista.num += 1;
	  
	  lista.sum += x;
	  
	  lista.sum2 += Math.pow(x, 2);
	  
  }
  
  public static double mean(Statistics lista){
	  
	  double media; 
	  
	  media = lista.sum / lista.num;
	  
	  return media;
	  
  }
  
}


// Definir classe Statistics

class Statistics {

	double min;
	double max;
	int num;
	double sum;
	double sum2;
}


  
