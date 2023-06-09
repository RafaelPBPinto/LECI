public class Telemovel {
    private String nome;
    private String processador;
    private int preco;
    private int RamMemory;
    private int RomMemory;
    private int camera;

    public Telemovel(String nome, String processador, int preco, int RamMemory, int RomMemory, int camera) {
        this.nome = nome;
        this.processador = processador;
        this.preco = preco;
        this.RamMemory = RamMemory;
        this.RomMemory = RomMemory;
        this.camera = camera;
    }

    public String getNome() {
        return nome;
    }

    public String getProcessador() {
        return processador;
    }

    public int getPreco() {
        return preco;
    }

    public int getRamMemory() {
        return RamMemory;
    }

    public int getRomMemory() {
        return RomMemory;
    }

    public int getCamera() {
        return camera;
    }

    @Override
    public String toString() {
        return nome + '\t' + processador + '\t' + preco + "€\t" + RamMemory + "Gb\t" + RomMemory + "Gb\t" + camera + "Mp";
    }
}
