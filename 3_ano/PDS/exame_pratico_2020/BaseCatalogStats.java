import java.util.Map;
import java.util.Iterator;

public class BaseCatalogStats implements CatalogStats {
    private CatalogAdmin catalogAdmin;

    public BaseCatalogStats(CatalogAdmin catalogAdmin) {
        this.catalogAdmin = catalogAdmin;
    }

    public double getAveragePerType() {
        Map<String, Servico> servicos = catalogAdmin.getServicos();
        double avg = 0;
        int servicosCounter = 0;
        Iterator<String> iterator = servicos.keySet().iterator();
        while(iterator.hasNext()) {
            Servico s = servicos.get(iterator.next());
            if (s.type() != TipoServico.ALOJAMENTO && s.type() != TipoServico.PACOTESERVICOS) {
                avg += s.price();
                servicosCounter++;
            }
        }
        avg = avg / servicosCounter; 
        return avg;
    }

    public double getMinimumPrice(TipoServico type) {
        Map<String, Servico> servicos = catalogAdmin.getServicos();
        double minPrice = -1;
        Iterator<String> iterator = servicos.keySet().iterator();
        while(iterator.hasNext()) {
            Servico s = servicos.get(iterator.next());
            if (s.type() == type){
                if (minPrice == -1 || s.price() < minPrice) {
                    minPrice = s.price();
                }
            }
        }
        return minPrice;
    }
}
