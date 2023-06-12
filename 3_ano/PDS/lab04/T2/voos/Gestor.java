package lab03.voos;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class Gestor {
    static MiddleWare middleWare = new MiddleWare();
    public static void main(String[] args) {

        if(args.length > 1){
            PDS_ERROR.InvalidArguments("java Gestor.java <instructionFile>");
        }
        if(args.length > 0){
            String fileName = args[0];
            automateInstructions(fileName);
            System.exit(0);
        }
        
        while(true){
            System.out.println("Escolha uma opção: (H para ajuda)");
            Scanner scanIn = new Scanner(System.in);
            readInput(scanIn);
        }

        
        
    }

    private static void readInput(Scanner scan){
        String userInput = scan.nextLine();
        String[] parts = userInput.trim().split(" ");
        if(parts[0].length()!=1){
            PDS_ERROR.InvalidUserInput(userInput);
            return;
        }
        if(!evaluateUserInput(parts)){
            PDS_ERROR.InvalidUserInput(userInput);;
        }
    }

    private static boolean evaluateUserInput(String[] userInput){
        boolean done = false;
        switch (userInput[0]) {
            case "H":
                if(userInput.length==1){
                    middleWare.help();
                    done = true;
                }
                break;
            case "I":
                if(userInput.length==2){
                    done = middleWare.readFlightInfo(userInput[1]);
                }
                break;
            case "M":
                if(userInput.length==2){
                    done = middleWare.showFlightMap(userInput[1]);
                }
                break;
            case "F":
                if(userInput.length==4){
                    done = middleWare.addFlight(userInput[1], userInput[2], userInput[3]);
                }
                if(userInput.length==3){
                    done = middleWare.addFlight(userInput[1], userInput[2]);
                }
                break;
            case "R":
                if(userInput.length==4){
                    done = middleWare.addReservation(userInput[1], userInput[2], userInput[3]);
                }
                break;
            case "C":
                if(userInput.length==2){
                    done = middleWare.cancelReservation(userInput[1]);
                }
                break;
            case "Q":
                if(userInput.length==1){
                    middleWare.quit();
                    return true; 
                }
            default:
                System.out.println("You chose option " + userInput[0]);

        }
        return done;
    }

    private static void automateInstructions(String fileName){
        try {
            Scanner scanFile = new Scanner(new File(fileName));
            while(scanFile.hasNextLine()){
                readInput(scanFile);
            }
            
        } catch (FileNotFoundException e) {
            PDS_ERROR.InvalidFileName(fileName);
        }
        
    }

    
}
