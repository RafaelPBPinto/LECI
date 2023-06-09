package lab03.voos;

import java.io.FileNotFoundException;

public interface MenuInterface {
    public boolean readFlightInfo(String fileName) throws FileNotFoundException;
    public void showFlightMap(String flightCode);
    public void addFlight(String flightCode, Seats executive, Seats tourist);
    public void addFlight(String flightCode, Seats tourist);
    public void addReservation(String flightCode, Type type, int seats);
    public void cancelReservation(String reservationCode);
}
