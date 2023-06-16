import java.util.Scanner;
import java.util.Stack;

public class E1_3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Stack<Double> stack = new Stack<>();
        
        String input = sc.nextLine();
        Scanner scanner_input = new Scanner(input);

        while(scanner_input.hasNext()){
            if(scanner_input.hasNextDouble()){
                stack.push(scanner_input.nextDouble());
            } else if(scanner_input.hasNext("[+\\-*/]")){
                char operator = scanner_input.next().charAt(0);
                if(stack.size() >= 2){
                    double op2 = stack.pop();
                    double op1 = stack.pop();
                    stack.push(calculate(op1, operator, op2));
                } else {
                    System.err.println("Invalid expression");
                    break;
                }
            } else {
                System.err.println("Invalid value");
                break;
            }
            System.out.printf("Stack: %s\n", stack);
        }

        scanner_input.close();
        sc.close();
    }

    private static double calculate(double op1, char operator, double op2){
        switch(operator){
            case '+':
                return op1 + op2;
            case '-':
                return op1 - op2;
            case '*':
                return op1 * op2;
            case '/':
                return op1 / op2;
            default:
                System.err.println("Invalid operator");
                return 0;
        }
    }
}

