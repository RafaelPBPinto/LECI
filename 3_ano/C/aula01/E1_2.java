import java.util.Scanner;
import java.util.Map;
import java.util.HashMap;

public class E1_2 {

    private static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        
        Map<String, Double> vars = new HashMap<>();

        while(true){
            Double result = 0.0; 
            if(sc.hasNext("[a-zA-Z]")){
                String varName = sc.next();
                if(sc.hasNext("=")){
                    sc.next();
                    if(sc.hasNextDouble()){
                        Double op1 = sc.nextDouble();
                        if(sc.hasNext()){
                            char operator = sc.next().charAt(0);
                            if(operator == '+' || operator == '-' || operator == '*' || operator == '/'){
                                if(sc.hasNextDouble()){
                                    Double op2 = sc.nextDouble();
                                    result = calculate(op1, operator, op2);
                                }
                            } else {
                                System.err.println("Invalid operator");
                            }
                        }
                    } else {
                        String aux = sc.next();
                        if(vars.containsKey(aux) && !aux.equals(varName)){
                            result = vars.get(aux);
                            vars.put(varName, result);
                        } else {
                            System.err.println("Invalid variable");
                            continue;
                        }
                    }
                } else {
                    System.err.println("Invalid assignment");
                }
            }
            System.out.printf("result = %.1f", result);
        }
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
