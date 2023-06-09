//Author: Rafael Pinto, 103379, p5_09

package Ex2;

public class VowelFilter extends TextReaderDecorator {
    public VowelFilter(TextReaderInterface textReader) {
        super(textReader);
    }
    
    @Override
    public String next(){
        return super.next().replaceAll("[aeiouAEIOU]", "");
    }
}
