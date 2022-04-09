package Aula5;
import java.util.Scanner;

public class Ex3 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        Circle[] circulo = new Circle[10];
        Rectangle[] retangulo = new Rectangle[10];
        Triangle[] triangulo = new Triangle[10];
        int option;
        int countCircle = 0;
        int countRectangle = 0;
        int countTriangle = 0;

        do{
            System.out.println("Operations:");
            System.out.println("1 -create new figure");
            System.out.println("2 -compare");
            System.out.println("3 -show info figure");
            System.out.println("4 -show info all");
            System.out.println("5 -change figure");
            System.out.println("0 -exit");
            option = sc.nextInt();
            
            switch(option){
                case 1:
                    System.out.println("1- Circle; 2- Rectangle; 3- Triangle");
                    System.out.print("Select a figure to create: ");
                    int op1 = sc.nextInt();
                    if(op1 == 1){
                        assert countCircle < 10: "MAX CIRCLES!";
                        System.out.print("Radius: ");
                        int radius = sc.nextInt();
                        circulo[countCircle++] = new Circle(radius);
                    }else if(op1 == 2){
                        assert countRectangle < 10: "MAX RECTANGLE!";
                        System.out.print("Width: ");
                        int width = sc.nextInt();
                        System.out.print("Height: ");
                        int height = sc.nextInt();
                        retangulo[countRectangle++] = new Rectangle(width, height);
                    }else if(op1 == 3){
                        assert countTriangle < 10: "MAX TRIANGLES!";
                        System.out.print("a: ");
                        int a = sc.nextInt();
                        System.out.print("b: ");
                        int b = sc.nextInt();
                        System.out.print("c: ");
                        int c = sc.nextInt();
                        triangulo[countTriangle++] = new Triangle(a, b, c);
                    }else{
                        System.out.println("Invalid figure!");
                    }
                    break; 
                case 2:
                    if(countCircle == 0 && countRectangle == 0 && countTriangle == 0){
                        System.out.println("There are no figures");
                    }else{
                        System.out.println("1- Circle; 2- Rectangle; 3- Triangle");
                        System.out.print("Select a figure to compare: ");
                        int op2 = sc.nextInt();
                        if(op2 == 1){
                            for(int i = 0; i < countCircle; i++){
                                System.out.println(i);
                                System.out.println(circulo[i].toString());
                            }
                            System.out.println("Select 2: ");
                            int c1 = sc.nextInt();
                            int c2 = sc.nextInt();
                            if(c1 > countCircle || c2 > countCircle){
                                System.out.println("Figure doesnt exits!");
                            }else{
                                System.out.printf("circulo[%d] == circulo[%d] => ", c1, c2);
                                System.out.print(circulo[c1].equals(circulo[c2]));
                                System.out.println();
                            }
                        }else if(op2 == 2){
                            for(int i = 0; i < countRectangle; i++){
                                System.out.println(i);
                                System.out.println(retangulo[i].toString());
                            }
                            System.out.println("Select 2: ");
                            int c1 = sc.nextInt();
                            int c2 = sc.nextInt();
                            if(c1 > countRectangle || c2 > countRectangle){
                                System.out.println("Figure doesnt exits!");
                            }else{
                                System.out.printf("retangulo[%d] == retangulo[%d] => ", c1, c2);
                                System.out.print(retangulo[c1].equals(retangulo[c2]));
                                System.out.println();
                            }
                        }else if(op2 == 3){
                            for(int i = 0; i < countTriangle; i++){
                                System.out.println(i);
                                System.out.println(triangulo[i].toString());
                            }
                            System.out.println("Select 2: ");
                            int c1 = sc.nextInt();
                            int c2 = sc.nextInt();
                            if(c1 > countTriangle || c2 > countTriangle){
                                System.out.println("Figure doesnt exits!");
                            }else{
                                System.out.printf("triangulo[%d] == triangulo[%d] => ", c1, c2);
                                System.out.print(triangulo[c1].equals(triangulo[c2]));
                                System.out.println();
                            }
                        }else{
                            System.out.println("Invalid figure!");
                        }
                    }
                    break;
                case 3:
                    System.out.println("1- Circle; 2- Rectangle; 3- Triangle");
                    System.out.print("Select a figure to view: ");
                    int op3 = sc.nextInt();
                    if(op3 == 1){
                        for(int i = 0; i < countCircle; i++){
                            System.out.println(i);
                            System.out.println(circulo[i].toString());
                        }
                    }else if(op3 == 2){
                        for(int i = 0; i < countRectangle; i++){
                            System.out.println(i);
                            System.out.println(retangulo[i].toString());
                        }
                    }else if(op3 == 3){
                        for(int i = 0; i < countTriangle; i++){
                            System.out.println(i);
                            System.out.println(triangulo[i].toString());
                        }
                    }else{
                        System.out.println("Invalid figure!");
                    }
                    break;
                case 4:
                    for(int i = 0; i < countCircle; i++){
                        System.out.println(i);
                        System.out.println(circulo[i].toString());
                    }
                    for(int i = 0; i < countRectangle; i++){
                        System.out.println(i);
                        System.out.println(retangulo[i].toString());
                    }
                    for(int i = 0; i < countTriangle; i++){
                        System.out.println(i);
                        System.out.println(triangulo[i].toString());
                    }
                    break;
                case 5:
                if(countCircle == 0 && countRectangle == 0 && countTriangle == 0){
                    System.out.println("There are no figures");
                }else{
                    System.out.println("1- Circle; 2- Rectangle; 3- Triangle");
                    System.out.print("Select a figure to create: ");
                    int op5 = sc.nextInt();
                    if(op5 == 1){
                        for(int i = 0; i < countCircle; i++){
                            System.out.println(i);
                            System.out.println(circulo[i].toString());
                        }
                        System.out.print("Wich figure? ");
                        int select = sc.nextInt();
                        System.out.print("Radius: ");
                        int radius = sc.nextInt();
                        circulo[select].set(radius);
                    }else if(op5 == 2){
                        for(int i = 0; i < countRectangle; i++){
                            System.out.println(i);
                            System.out.println(retangulo[i].toString());
                        }
                        System.out.print("Wich figure? ");
                        int select = sc.nextInt();
                        System.out.print("Width: ");
                        int width = sc.nextInt();
                        System.out.print("Height: ");
                        int height = sc.nextInt();
                        retangulo[select].set(width, height);
                    }else if(op5 == 3){
                        for(int i = 0; i < countTriangle; i++){
                            System.out.println(i);
                            System.out.println(triangulo[i].toString());
                        }
                        System.out.print("Wich figure? ");
                        int select = sc.nextInt();
                        System.out.print("a: ");
                        int a = sc.nextInt();
                        System.out.print("b: ");
                        int b = sc.nextInt();
                        System.out.print("c: ");
                        int c = sc.nextInt();
                        triangulo[select].set(a, b, c);
                    }else{
                        System.out.println("Invalid figure!");
                    }
                }
                break; 
                case 0:
                    System.out.println("Goodbye!");
                    break;
                default:
                    System.out.println("Invalid operation!");
                    break;
            }
        }while(option != 0);
    }   
}
