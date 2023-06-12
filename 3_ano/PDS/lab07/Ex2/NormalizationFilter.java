//Author: Rafael Pinto, 103379, p5_09

package Ex2;

public class NormalizationFilter extends TextReaderDecorator {

    public NormalizationFilter(TextReaderInterface textReader) {
        super(textReader);
    }

    @Override
    public String next() {
        String res = super.next().replaceAll("[^\\p{ASCII}]", "");
        res = res.replaceAll("[\\p{Punct}]", "");
        return res;
    }
}
