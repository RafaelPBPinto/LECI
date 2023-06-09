import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;

public class BaseCatalogAdmin implements CatalogAdmin {
    private Map<String, Servico> servicos = new HashMap<>();
    
    public boolean registarServico(String codigo, Servico servico){
        if (servicos.containsKey(codigo)){
            return false;
        }
        servicos.put(codigo, servico);
        return true;
    }

    public boolean verificarServico(String codigo) {
        return servicos.containsKey(codigo);
    }

    public Servico selecionarServico(String codigo) {
        return servicos.get(codigo);
    }

    public Servico removerServico(String codigo) {
        Servico removido = servicos.get(codigo);
        servicos.remove(codigo);
        return removido;
    }

    public Map<String, Servico> getServicos() {
        return servicos;
    }

    public Iterator<String> iterator() {
        return (this).new MapIterator<String, Servico>();
    }
    
    private class MapIterator<K, V> implements Iterator<String> {
        private Iterator<String> keyset;

        MapIterator() {
            this.keyset = servicos.keySet().iterator();
        }

        public boolean hasNext() {
            return keyset.hasNext();
        }

        public String next() {
            String key = keyset.next();
            return servicos.get(key).toString();
        }
    }
}
