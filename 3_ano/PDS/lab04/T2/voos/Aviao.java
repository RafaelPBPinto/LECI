package lab03.voos;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Scanner;

public class Aviao implements MenuInterface{

    // HashMap<flightCode, flight>
    private HashMap<String, Voo> flights = new HashMap<String, Voo>();

    Aviao(){
        
    }

    ///////////////// INTERFACE METHODS //////////////////
    
    public boolean readFlightInfo(String fileName) throws FileNotFoundException{
        Scanner scanner = new Scanner(new File(fileName));
        // Read and process header
        String flight = readHeader(scanner);
        if (flight.startsWith(" ")){
            System.out.println("Here is the problem");
            PDS_ERROR.InvalidUserInput(fileName + flight);
            return false;
        }
            
        // Read and process reservation
        readReservation(scanner, fileName);
        return true;
    }

    ////////////////////////////////////////////////////////////////////////////////////////

    private String readHeader(Scanner scanner){
        if(!scanner.hasNextLine()){
            return " is empty.";
        }
        String header = scanner.nextLine();
        String[] something = header.split("[ >]");
        String[] flightInfo = new String[2];
        flightInfo[0] = something[1];
        flightInfo[1] = something[2];
        if(flightInfo.length < 2 || flightInfo.length > 3){
            return " does not contain valid information.";
        }

        ArrayList<int[]> flightSeatsInfo = tryCreateFlight(flightInfo);
        if(flightSeatsInfo.size()==0){
            return " does not contain seat information.";
        }
        ArrayList<Seats> flightSeats= new ArrayList<>();

        for (int[] is : flightSeatsInfo) {
            flightSeats.add(new Seats(is[0], is[1]));
        }

        Voo flight;
        if (flightSeats.size()==1) {
            flight = new Voo(flightSeats.get(0));
        }
        else{
            flight = new Voo(flightSeats.get(0), flightSeats.get(1));
        }

        this.flights.put(flightInfo[0], flight);

        return flightInfo[0];
    }

    private void readReservation(Scanner scanner, String flightName){
        while(scanner.hasNextLine()){
            String line = scanner.nextLine();
            if (!line.matches("^[ET][ ]\\d+$"))
                continue;
            String[] entries = line.split(" ");
            for (String string : entries) {
                System.out.println("Entry "+string);
            }
            Type tempType = Type.getType(entries[0]);
            int tempInt = Integer.parseInt(entries[1]);
            addReservation(flightName, tempType, tempInt);
        }
    }

    private ArrayList<int[]> tryCreateFlight(String[] seats){
        ArrayList<int[]> spots = new ArrayList<int[]>();
        for (String string : seats) {
            if (Seats.canConvert(string)) {
                spots.add(Seats.convertStringToSeats(string));
            }
        }
        return spots;
    }
    

    ////////////////////////////////////////////////////////////////////////////////


    public void showFlightMap(String flightCode){
        this.flights.get(flightCode).showFlightMap();
    }

     ////////////////////////////////////////////////////////////////////////////////

    public void addFlight(String flightCode, Seats executive, Seats tourist){
        Voo temp = new Voo(executive, tourist);
        this.flights.put(flightCode, temp);
    }

     ////////////////////////////////////////////////////////////////////////////////

    public void addFlight(String flightCode, Seats tourist){
        Voo temp = new Voo(tourist);
        this.flights.put(flightCode, temp);
    }

    /////////////////////////////////////////////////////////////////////////////////////////


    public void addReservation(String flightCode, Type type, int seats){
        Voo tempVoo = flights.get(flightCode);
        tempVoo.reserva(type, seats);
    }

    /////////////////////////////////////////////////////////////////////////////////////////


    public void cancelReservation(String reservationCode){
        String[] entries = reservationCode.split(":");
        if(!flights.containsKey(entries[0])){
            PDS_ERROR.InvalidUserInput(reservationCode);
            return;
        }
        flights.get(entries[0]).cancelReservation(Integer.parseInt(entries[1]));        
    }

    ///////////////// OTHER METHODS //////////////////

    public boolean planeHasFlight(String flightCode){
        return flights.containsKey(flightCode);
    }

    public Voo getVoo(String flightCode){
        return this.flights.get(flightCode);
    }

}
