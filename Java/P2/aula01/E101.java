import java.util.*;

public class E101 {
    static Scanner k = new Scanner(System.in);
    public static void main(String args[]){

        System.out.println("Calculadora");
        System.out.println("-----------");

        calculadora conta = new calculadora();

        System.out.print("Número 1: ");
        conta.n1 = k.nextDouble();

        do{
            System.out.print("Operador: ");
            conta.operador = k.next().charAt(0);
            if(conta.operador != '+' && conta.operador != '-' && conta.operador != '*' && conta.operador != '/' ){
                System.out.println("Operador inválido!");
            }
        }while(conta.operador != '+' && conta.operador != '-' && conta.operador != '*' && conta.operador != '/' );
        System.out.print("Número 2: ");
        conta.n2 = k.nextDouble();

        switch(conta.operador){
			
            case '+':
                soma(conta.n1, conta.n2);
                break;
            case '-':
                sub(conta.n1, conta.n2);
                break;
            case '*':
                mult(conta.n1, conta.n2);
                break;
            case '/':
                div(conta.n1, conta.n2);
                break;
        }

        System.out.println();
    }

    public static void soma(double n1, double n2){

        double soma = n1 + n2;

        System.out.printf("%4.2f + %4.2f = %4.2f", n1, n2, soma);

    }

    public static void sub(double n1, double n2){

        double subtração = n1 - n2;

        System.out.printf("%4.2f - %4.2f = %4.2f", n1, n2, subtração);

    }

    public static void mult(double n1, double n2){

        double multiplicação = n1 * n2;

        System.out.printf("%4.2f * %4.2f = %4.2f", n1, n2, multiplicação);

    }

    public static void div(double n1, double n2){

        double divisão = n1 / n2;

        System.out.printf("%4.2f / %4.2f = %4.2f", n1, n2, divisão);
        
    }
}
