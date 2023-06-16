import java.util.Scanner;
import java.util.Map;
import java.util.HashMap;

public class E1_2 {

    private static final Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {
        
        Map<String, Double> vars = new HashMap<>();

        while(true){
            Double result = 0.0; 
            String input = sc.nextLine();
            Scanner scanner_input = new Scanner(input);
            if(scanner_input.hasNext("[a-zA-Z]+")){
                String var = scanner_input.next();
                if (vars.containsKey(var)){
                    result = vars.get(var);
                }
                if(!scanner_input.hasNext()){
                    if(vars.containsKey(var)){
                        result = vars.get(var);
                    } else {
                        System.err.println("Variable not found");
                        break;
                    }
                } else if(scanner_input.hasNext("=")){
                    scanner_input.next();
                    while(scanner_input.hasNext()){
                        if(scanner_input.hasNext("[a-zA-Z]+")){
                            String var2 = scanner_input.next();
                            if(vars.containsKey(var2)){
                                result = vars.get(var2);
                            } else {
                                System.err.println("Variable not found");
                                break;
                            }
                        } else if(scanner_input.hasNext("[+\\-*/]")){
                            char operator = scanner_input.next().charAt(0);
                            if(scanner_input.hasNextDouble()){
                                double op2 = scanner_input.nextDouble();
                                result = calculate(result, operator, op2);
                            } else if(scanner_input.hasNext("[a-zA-Z]+")){
                                String var2 = scanner_input.next();
                                if(vars.containsKey(var2)){
                                    result = calculate(result, operator, vars.get(var2));
                                } else {
                                    System.err.println("Variable not found");
                                    break;
                                }
                            } else {
                                System.err.println("Invalid value");
                                break;
                            }
                        } else if(scanner_input.hasNextDouble()){ 
                            double op = scanner_input.nextDouble();
                            result = op;
                        }else {
                            System.err.println("Invalid input");
                            break;
                        }
                    }
                    vars.put(var, result);
                } else {
                    while(scanner_input.hasNext()){
                        if(scanner_input.hasNext("[+\\-*/]")){
                            char operator = scanner_input.next().charAt(0);
                            if(scanner_input.hasNextDouble()){
                                double op2 = scanner_input.nextDouble();
                                result = calculate(result, operator, op2);
                            } else if(scanner_input.hasNext("[a-zA-Z]+")){
                                String var2 = scanner_input.next();
                                if(vars.containsKey(var2)){
                                    result = calculate(result, operator, vars.get(var2));
                                } else {
                                    System.err.println("Variable not found");
                                    break;
                                }
                            } else {
                                System.err.println("Invalid value");
                                break;
                            }
                        } else {
                            System.err.println("Invalid input");
                            break;
                        }
                    }
                }
            } else if(scanner_input.hasNextDouble()){
                double op1 = scanner_input.nextDouble();
                if(!scanner_input.hasNext()){
                    result = op1;
                } else if(scanner_input.hasNext("[+\\-*/]")){
                    char operator = scanner_input.next().charAt(0);
                    if(scanner_input.hasNextDouble()){
                        double op2 = scanner_input.nextDouble();
                        result = calculate(op1, operator, op2);
                    } else if(scanner_input.hasNext("[a-zA-Z]+")){
                        String var = scanner_input.next();
                        if(vars.containsKey(var)){
                            result = calculate(op1, operator, vars.get(var));
                        } else {
                            System.err.println("Variable not found");
                            break;
                        }
                    } else {
                        System.err.println("Invalid value");
                        break;
                    }
                } else {
                    System.err.println("Invalid operator");
                    break;
                }
            } else {
                System.err.println("Invalid input");
                break;
            }
            System.out.printf("result = %.1f\n", result);
            scanner_input.close();
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

