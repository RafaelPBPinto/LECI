import java.util.*;

public class TableInfo {
    public int numberOfCols = 0;
    public ArrayList<String> types=new ArrayList<>();
    public ArrayList<String> header = new ArrayList<>();
    public List<ColumnRepresentation> crs = new ArrayList<>();
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Number of cols: ").append(numberOfCols);
        sb.append(" Headers : ").append(header);
        sb.append(" Types: ").append(types != null ? types.toString() : "null");
        return sb.toString();
    }
}


