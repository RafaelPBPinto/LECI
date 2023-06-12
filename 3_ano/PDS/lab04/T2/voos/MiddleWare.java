package lab03.voos;

import java.io.FileNotFoundException;

public class MiddleWare implements MiddleWareInterface{
    Aviao plane = new Aviao();

    @Override
    public void help() {
        String[] help = {
            "Perdido? Deixe-me ajudá-lo.",
            "H: Mostrar este menu novamente.",
            "I <NomeFicheiro>: Lê um ficheiro contendo informações de voo.",
            "M <CodigoVoo>: exibe o mapa das reservas de um vo.o",
            "F <CodigoVoo> <NumCadeirasExecutivo> <numCadeirasTurista>: acrescenta um novo voo.",
            "R <CodigoVoo> <Classe> <NumCadeiras>: acrescenta uma nova reserva a um voo.",
            "C <CodigoReserva>: cancela uma reserva.",
            "Q: termina este programa."
        };
        for (String entry : help) {
            System.out.println(entry);
        }
    }

    ///////////////// INTERFACE METHODS //////////////////

    @Override
    public boolean readFlightInfo(String fileName) {
        try{
           return plane.readFlightInfo(fileName);
        } catch (FileNotFoundException e) {
            PDS_ERROR.InvalidUserInput(fileName + " does not exist.");
            return false;
        }
    }

    @Override
    public boolean showFlightMap(String flightCode) {
        if(!planeExists(flightCode, false))
            return false;
        plane.showFlightMap(flightCode);
        return true;
    }

    @Override
    public boolean addFlight(String flightCode, String executive, String tourist) {
        if(planeExists(flightCode, false))
            return false;
        if(!checkIfSeatsCan(executive) || !checkIfSeatsCan(tourist))
            return false;
        plane.addFlight(flightCode, getSeats(executive), getSeats(tourist));
        return true;
    }

    public boolean addFlight(String flightCode, String tourist) {
        if(planeExists(flightCode, false))
            return false;
        if(!checkIfSeatsCan(tourist))
            return false;
        System.out.println("Error");
        plane.addFlight(flightCode, getSeats(tourist));
        return true;
    }

    @Override
    public boolean addReservation(String flightCode, String type, String seats) {
        Type newType = Type.getType(type);
        int newSeats = Integer.parseInt(seats);
        if(!planeExists(flightCode, true))
            return false;
        Voo tempVoo = plane.getVoo(flightCode);
        if(!tempVoo.hasExecutive() && newType==Type.E){
            System.out.println("Classe executiva não disponível neste voo.");
            System.out.println("Não foi possível obter lugares para a reserva: " + type.toString() + " " + seats);
        }
        if(tempVoo.getSpots(newType).getEmptySeats()<newSeats){
            System.out.println("Não foi possível obter lugares para a reserva: " + type.toString() + " " + seats);
            return false;
        }
        plane.addReservation(flightCode, newType, newSeats);
        return true;
    }

    @Override
    public boolean cancelReservation(String reservationCode) {
        if(!reservationCode.matches("^\\w*[:]\\d+$")){
            System.out.print("I raised a problem:");
            PDS_ERROR.InvalidUserInput(reservationCode);
            return false;
        }
        plane.cancelReservation(reservationCode);
        return true;
    }

    @Override
    public void quit() {
        System.out.println("A terminar este programa.");
        System.exit(0);
    }


    ///////////////// OTHER METHODS //////////////////

    private boolean planeExists(String flightCode, boolean raiseError){
        if(!plane.planeHasFlight(flightCode)){
            if (raiseError)
                PDS_ERROR.InvalidUserInput(flightCode);
            return false;
        }
        return true;
    }

    private void invalidSeats(String seats){
        PDS_ERROR.InvalidUserInput("Invalid seats " + seats);
    }

    private boolean checkIfSeatsCan(String seats){
        if(!Seats.canConvert(seats)){
            invalidSeats(seats);
            return false;
        }
        return true;
    }
   
    private Seats getSeats(String seats){
        int[] type = Seats.convertStringToSeats(seats);
        return new Seats(type[0], type[1]);
    }
}
