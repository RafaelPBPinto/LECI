package POO2122;

import java.util.ArrayList;
import java.time.LocalDate;
import java.util.List;

public class Event implements IEvent {
    private LocalDate data;
    private List<Activity> atividades = new ArrayList<>();
    private List<Client> clientes = new ArrayList<>();
    private double custoTotal = 0;

    public Event(Activity activity){
        atividades.add(activity);
    }

    public Event(Client cliente, LocalDate data){
        for (Activity a : atividades) {
            a.addParticipante();
        }
        if(!clientes.contains(cliente))
            clientes.add(cliente);
        this.data = data;
    }

    public Event addActivity(Activity activity){
        custoTotal += activity.getPreco();
        return new Event(activity);
    }
    
    public LocalDate getDate(){
        return data;
    }
    
    public double getTotalCost(){
        return custoTotal;
    }

    protected String getClientes(){
        String s = "";
        for (Client c : clientes) {
            s += c;
        }
        return s;
    }

    protected String listActivities(){
        String s = "";
        for (Activity a : atividades) {
            s += a;
        }
        return s;
    }

    @Override
    public String toString(){
        return String.format("%s*** Evento em %s, total=%.0f euros\n%s", getClientes(), data, custoTotal, listActivities());
    }
}
