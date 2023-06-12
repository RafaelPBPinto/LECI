// Author: Rafael Pinto, 103379, p5_09

package startypes;
import java.awt.Color;

public class BStar extends StarType{
    
    public BStar() {
        super(5, new Color(230, 252, 252));
        this.description = "This is a long description of the B type star....";
        // This would store the values of physical properties for each type of star
        this.physicalProperties = new Float[10];
    }
}
