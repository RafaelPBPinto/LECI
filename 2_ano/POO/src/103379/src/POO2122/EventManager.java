package POO2122;

import java.util.Set;
import java.time.LocalDate;
import java.util.HashSet;

public class EventManager {
    private String nome;
    private Set<Client> clientes = new HashSet<>();
    private Set<Event> eventos = new HashSet<>();

    public EventManager(String nome){
        this.nome = nome;
    }

    public String getNome(){
        return nome;
    }

    public Event addEvent(Client cliente, LocalDate data){
        return new Event(cliente, data);
    }

    public Client addClient(String nome, String localidade){
        if(!clientes.isEmpty()){
            for(Client c : clientes){
                if(c.getNome().equals(nome)){
                    if(c.getLocalidade().equals(localidade)){
                        return null;
                    }
                }
            }
        }
        Client newClient = new Client(nome, localidade);
        clientes.add(newClient);
        return newClient;
    }

    public String listClients(){
        String list = "Clients:\n";
        for (Client c : clientes) {
            list += c;
        }
        return list;
    }

    public String listEvents(){
        String list = "Events:\n";
        for (Event e : eventos) {
            list += e;
        }
        return list;
    }
}
