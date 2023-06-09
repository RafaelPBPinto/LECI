import java.util.List;
import java.util.ArrayList;

public class QuickSort implements Sort {
    public List<Telemovel> sortByNome(List<Telemovel> telemoveis, boolean asc) {
        List<Telemovel> sorted = new ArrayList<Telemovel>();
        if (asc) {
            for (Telemovel t : telemoveis) {
                int i = 0;
                while (i < sorted.size() && t.getNome().compareTo(sorted.get(i).getNome()) > 0) {
                    i++;
                }
                sorted.add(i, t);
            }
        } else {
            for (Telemovel t : telemoveis) {
                int i = 0;
                while (i < sorted.size() && t.getNome().compareTo(sorted.get(i).getNome()) < 0) {
                    i++;
                }
                sorted.add(i, t);
            }
        }
        return sorted;
    }

    public List<Telemovel> sortByProcessador(List<Telemovel> telemoveis, boolean asc) {
        List<Telemovel> sorted = new ArrayList<Telemovel>();
        if (asc) {
            for (Telemovel t : telemoveis) {
                int i = 0;
                while (i < sorted.size() && t.getProcessador().compareTo(sorted.get(i).getProcessador()) > 0) {
                    i++;
                }
                sorted.add(i, t);
            }
        } else {
            for (Telemovel t : telemoveis) {
                int i = 0;
                while (i < sorted.size() && t.getProcessador().compareTo(sorted.get(i).getProcessador()) < 0) {
                    i++;
                }
                sorted.add(i, t);
            }
        }
        return sorted;
    }

    public List<Telemovel> sortByPreco(List<Telemovel> telemoveis, boolean asc) {
        List<Telemovel> sorted = new ArrayList<Telemovel>();
        if (asc) {
            for (Telemovel t : telemoveis) {
                int i = 0;
                while (i < sorted.size() && t.getPreco() > sorted.get(i).getPreco()) {
                    i++;
                }
                sorted.add(i, t);
            }
        } else {
            for (Telemovel t : telemoveis) {
                int i = 0;
                while (i < sorted.size() && t.getPreco() < sorted.get(i).getPreco()) {
                    i++;
                }
                sorted.add(i, t);
            }
        }
        return sorted;
    }

    public List<Telemovel> sortByRamMemory(List<Telemovel> telemoveis, boolean asc) {
        List<Telemovel> sorted = new ArrayList<Telemovel>();
        if (asc) {
            for (Telemovel t : telemoveis) {
                int i = 0;
                while (i < sorted.size() && t.getRamMemory() > sorted.get(i).getRamMemory()) {
                    i++;
                }
                sorted.add(i, t);
            }
        } else {
            for (Telemovel t : telemoveis) {
                int i = 0;
                while (i < sorted.size() && t.getRamMemory() < sorted.get(i).getRamMemory()) {
                    i++;
                }
                sorted.add(i, t);
            }
        }
        return sorted;
    }

    public List<Telemovel> sortByRomMemory(List<Telemovel> telemoveis, boolean asc) {
        List<Telemovel> sorted = new ArrayList<Telemovel>();
        if (asc) {
            for (Telemovel t : telemoveis) {
                int i = 0;
                while (i < sorted.size() && t.getRomMemory() > sorted.get(i).getRomMemory()) {
                    i++;
                }
                sorted.add(i, t);
            }
        } else {
            for (Telemovel t : telemoveis) {
                int i = 0;
                while (i < sorted.size() && t.getRomMemory() < sorted.get(i).getRomMemory()) {
                    i++;
                }
                sorted.add(i, t);
            }
        }
        return sorted;
    }

    public List<Telemovel> sortByCamera(List<Telemovel> telemoveis, boolean asc) {
        List<Telemovel> sorted = new ArrayList<Telemovel>();
        if (asc) {
            for (Telemovel t : telemoveis) {
                int i = 0;
                while (i < sorted.size() && t.getCamera() > sorted.get(i).getCamera()) {
                    i++;
                }
                sorted.add(i, t);
            }
        } else {
            for (Telemovel t : telemoveis) {
                int i = 0;
                while (i < sorted.size() && t.getCamera() < sorted.get(i).getCamera()) {
                    i++;
                }
                sorted.add(i, t);
            }
        }
        return sorted;
    }
}
