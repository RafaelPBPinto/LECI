import java.util.List;

public interface Sort {
    List<Telemovel> sortByNome(List<Telemovel> telemoveis, boolean asc);
    List<Telemovel> sortByProcessador(List<Telemovel> telemoveis, boolean asc);
    List<Telemovel> sortByPreco(List<Telemovel> telemoveis, boolean asc);
    List<Telemovel> sortByRamMemory(List<Telemovel> telemoveis, boolean asc);
    List<Telemovel> sortByRomMemory(List<Telemovel> telemoveis, boolean asc);
    List<Telemovel> sortByCamera(List<Telemovel> telemoveis, boolean asc);    
}
