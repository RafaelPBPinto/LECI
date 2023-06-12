package EmpresaPst;

import java.util.List;
import java.util.ArrayList;

// Petiscos
public class Registos {
    // Data elements
    private ArrayList<Empregado> empregados;    // Stores the employees

    public Registos() {
        empregados = new ArrayList<>();
    }

    public void insere(Empregado emp){
        empregados.add(emp);
    }

    public void remove(int codigo){
        for (Empregado empregado : empregados) {
            if (empregado.codigo() == codigo) {
                empregados.remove(empregado);
                return;
            }
        }
    }

    public boolean isEmpregado(int codigo){
        for (Empregado empregado : empregados) {
            if (empregado.codigo() == codigo) {
                return true;
            }
        }
        return false;
    }

    public List<Empregado> listaDeEmpregados(){
        return empregados;
    }
}
