package lab03.voos;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.HashMap;

public class Voo{

    private HashMap<Type, Seats> spots = new HashMap<Type, Seats>();
    private boolean executive = false;
    private int reservation = 1;
    private Deque<Integer> availableReservations = new ArrayDeque<Integer>();
    private int totalRows = 0;
    private int totalSpots = 0;
    
    Voo(Seats touristSeats){
        initialize(Type.T, touristSeats);
    }

    Voo(Seats executiveSeats, Seats touristSeats) {
        this.executive = true;
        initialize(Type.T, touristSeats);
        initialize(Type.E, executiveSeats);
    }   

    public Seats getSpots(Type type){
        return spots.get(type);
    }

    public boolean hasExecutive(){
        return this.executive;
    }

    private void initialize(Type type, Seats typeSeats){
        this.spots.put(type, typeSeats);
        this.totalRows += typeSeats.getFilas();
        if(typeSeats.getSpots()>totalSpots)
            this.totalSpots = typeSeats.getSpots();
    }

    public boolean reserva(Type type, int seats){
        int res = reservation;
        boolean increment = true;
        if(!availableReservations.isEmpty()){
            res = availableReservations.poll();
            increment = false;
        }
            
        Seats temp = this.spots.get(type);
        int empty = temp.getFirstEmptyFila();
        if(empty!=-1)
            assignEmptyRow(empty, temp, seats, res);        
        else    
            assignNonEmptyRow(0, temp, seats, res);
        if(increment)
            reservation++;
        return true;
    }

    private void assignEmptyRow(int row, Seats temp, int seats, int res){
        int spotsSize = temp.getSpots();
        if(seats<=spotsSize){
            for (int i = 0; i < seats; i++) {
                temp.setSeatValue(row, i, res);
                temp.alterEmptySeats(-1);
            }
            return;
        }
        for (int i = 0; i < spotsSize; i++) {
            temp.setSeatValue(row, i, res);
            temp.alterEmptySeats(-1);
        }
        assignNonEmptyRow(++row%temp.getFilas(), temp, seats-spotsSize, res);
        return;
    }

    private void assignNonEmptyRow(int row, Seats temp, int seats, int res){
        for (int j = 0; j < temp.getSpots(); j++) {
            if(temp.getSeatValue(row, j)==0){
                temp.setSeatValue(row, j, res);
                temp.alterEmptySeats(-1);
                seats--;
                if(seats==0)
                    return;
            }
        }
        assignNonEmptyRow(++row%temp.getFilas(), temp, seats, res);
        return;
    }

    public boolean cancelReservation(int num){
        if(num<1 || num>=reservation || availableReservations.contains(num)){
            System.err.println("The reservation does not exist.");
            return false;
        }
        if (this.spots.get(Type.T).hasReservation(num)){
            removeReservation(Type.T, num);
        }
        else{
            removeReservation(Type.E, num);
        }   
        availableReservations.add(num);
        return true;
    }

    private void removeReservation(Type type, int num) {
        Seats temp = this.spots.get(type);
        for (int i = 0; i < temp.getSpots(); i++) {
            for (int j = 0; j < temp.getFilas(); j++) {
                if(temp.getSeatValue(j, i)==num)
                    temp.setSeatValue(j, i, 0);
                    temp.alterEmptySeats(+1);
            }
        }
        temp.removeReservation(num);
    }

    public void showFlightMap(){
        System.out.print("   ");
        for (int i = 1; i <= this.totalRows; i++) {
            System.out.printf("%3d", i);
        }
        System.out.print("\n");
        
        for (int i = 1; i <= this.totalSpots; i++) {
            char letter = (char) (i + 'A' - 1);
            System.out.print(" "+letter+" ");
            if(executive){
                if(this.spots.get(Type.E).getSpots()<i){
                    for (int j = 0; j < this.spots.get(Type.E).getFilas(); j++) {
                        System.out.printf("   ");
                    }
                }
                else{
                    for (int j = 0; j < this.spots.get(Type.E).getFilas(); j++) {
                        System.out.printf("%3d", this.spots.get(Type.E).getSeatValue(j, i-1));
                    }
                }
            }
            if(this.spots.get(Type.T).getSpots()<i){
                for (int j = 0; j < this.spots.get(Type.E).getFilas(); j++) {
                    System.out.printf("   ");
                }
            }
            else{
                for (int j = 0; j < this.spots.get(Type.T).getFilas(); j++) {
                    System.out.printf("%3d", this.spots.get(Type.T).getSeatValue(j, i-1));
                }
            }
            
            System.out.print("\n");
        }
    }
}
