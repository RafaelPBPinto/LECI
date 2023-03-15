import java.util.Scanner;

public class E1_7 {
    static String infix_expression = "";
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String prefix = sc.nextLine();
        if(!validatePrefix(prefix)){
            System.err.println("Invalid expression");
            System.exit(0);
        }
        Scanner in =  new Scanner(prefix);
        Double result = createPrefix(in);
        printInfix(result);
        in.close();
        sc.close();
    }

    public static Double createPrefix(Scanner in) {
        if (in.hasNextDouble()) {
            Double number = in.nextDouble();
            infix_expression += number;
            return number;
        } else {    
            String operator = in.next();
            infix_expression += "(";
            Double leftExpression = createPrefix(in);
            infix_expression += operator;
            Double rightExpression = createPrefix(in);            
            infix_expression += ")";
            return eval(operator, leftExpression, rightExpression);
        }
    }

    public static Double eval(String operator, Double leftExpression, Double rightExpression) {
        switch (operator) {
            case "+":
                return leftExpression + rightExpression;
            case "-":
                return leftExpression - rightExpression;
            case "*":
                return leftExpression * rightExpression;
            case "/":
                return leftExpression / rightExpression;
            default:
                System.err.println("Invalid operator");
                return null;
        }
    }

    public static void printInfix(Double result) {
        System.out.printf("%s=%.1f\n", infix_expression, result);
    } 

    public static boolean validatePrefix(String prefix) {
        return true;
    }
}

