package lab03.voos;

public interface MiddleWareInterface {
    public void help();
    public boolean readFlightInfo(String fileName);
    public boolean showFlightMap(String flightCode);
    public boolean addFlight(String flightCode, String executive, String tourist);
    public boolean addFlight(String flightCode, String tourist);
    public boolean addReservation(String flightCode, String type, String seats);
    public boolean cancelReservation(String reservationNumber);
    public void quit();
}
