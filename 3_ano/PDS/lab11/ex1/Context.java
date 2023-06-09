import java.util.List;

public class Context {
    private Sort strategy;
    
    public Context (Sort s) {
        this.strategy = s;
    }

    public void setStrategy(Sort s){
        this.strategy = s;
    }

    public List<Telemovel> sortByNome(List<Telemovel> telemoveis, boolean asc) {
        return strategy.sortByNome(telemoveis,asc);
    }

    public List<Telemovel> sortByProcessador(List<Telemovel> telemoveis, boolean asc){
        return strategy.sortByProcessador(telemoveis,asc);
    }

    public List<Telemovel> sortByPreco(List<Telemovel> telemoveis, boolean asc){
        return strategy.sortByPreco(telemoveis,asc);
    }

    public List<Telemovel> sortByRamMemory(List<Telemovel> telemoveis, boolean asc){
        return strategy.sortByRamMemory(telemoveis,asc);
    }

    public List<Telemovel> sortByRomMemory(List<Telemovel> telemoveis, boolean asc){
        return strategy.sortByRomMemory(telemoveis, asc);
    }

    public List<Telemovel> sortByCamera(List<Telemovel> telemoveis, boolean asc){
        return strategy.sortByCamera(telemoveis, asc);
    } 
}
