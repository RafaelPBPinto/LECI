import java.util.Scanner;

public class E1_1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Operation (number op number): ");

        double op1 = sc.nextDouble();
        char operator = sc.next().charAt(0);
        double op2 = sc.nextDouble();
        sc.close();
        double result = 0;

        switch(operator){
            case '+':
                result = op1 + op2;
                break;
            case '-':
                result = op1 - op2;
                break;
            case '*':
                result = op1 * op2;
                break;
            case '/':
                result = op1 / op2;
                break;
            default:
                System.err.println("Invalid operator");
        }

        System.out.printf("%.5f %c %.5f = %.5f\n", op1, operator, op2, result);
    }
}
