package lab03.voos;

import java.util.HashSet;
import java.util.Set;

public class Seats {
    private int lines;
    private int spots;
    private Set<Integer> reservations = new HashSet<Integer>();
    private int[][] seats;
    private int emptySeats;
    
    Seats(int lines, int spots){
        this.lines = lines;
        this.spots = spots;
        this.emptySeats = lines*spots;
        initialize();
    }

    public void initialize() {
        this.seats = new int[lines][spots];
        for (int i = 0; i < lines; i++) {
            for (int j = 0; j < spots; j++) {
                setSeatValue(i, j, 0);
            }
        }
        this.reservations.add(0);
    }

    public int getFilas() {
        return this.lines;
    }

    public int getSpots() {
        return this.spots;
    }

    public int getEmptySeats() {
        return this.emptySeats;
    }

    public void alterEmptySeats(int i){
        this.emptySeats += i;
    }

    public int getSeatValue(int line, int spot) {
        return this.seats[line][spot];
    }

    public void setSeatValue(int line, int spot, int value) {
        this.seats[line][spot] = value;
        if (!this.reservations.contains(value))
            this.reservations.add(value);
    }

    public static int[] convertStringToSeats(String lineBySpots){
        if (!lineBySpots.matches("^[\\d]+[x][\\d]+$")){
            return null;
        }
            
        String[] vals = lineBySpots.split("x");
        int[] returnValue = new int[2];
        returnValue[0] = Integer.parseInt(vals[0]); // 
        returnValue[1] = Integer.parseInt(vals[1]);
        return returnValue;
    }

    public static boolean canConvert(String lineBySpots){
        return lineBySpots.matches("^[\\d]+[x][\\d]+$");
    }

    public boolean hasReservation(int i) {
        return reservations.contains(i);
    }

    public boolean removeReservation(int i) {
        return reservations.remove(i);
    }

    public int getFirstEmptyFila(){
        
        for (int i = 0; i < lines; ) {
            boolean found = false;
            for (int j = 0; j < spots; j++) {
                found = true;
                if(this.getSeatValue(i, j)!=0){
                    found = false;
                    break;
                }
            }
            if(found)
                return i;
        }
        return -1;
    }
}
