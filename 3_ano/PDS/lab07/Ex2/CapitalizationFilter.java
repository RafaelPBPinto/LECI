//Author: Rafael Pinto, 103379, p5_09

package Ex2;

public class CapitalizationFilter extends TextReaderDecorator {
    public CapitalizationFilter(TextReaderInterface textReader) {
        super(textReader);
    }
    
    @Override
    public String next() {
        String next = super.next();
        String[] words = next.split(" ");
        String result = "";
        String firstLetter;
        String lastLetter;
        String middleLetters;
        for(String word : words) {
            firstLetter = word.substring(0, 1).toUpperCase();
            middleLetters = word.substring(1, word.length() - 1).toLowerCase();
            lastLetter = word.substring(word.length() - 1).toUpperCase();
            int i = 2;
            while (!Character.isLetter(lastLetter.charAt(0))) {
                lastLetter = word.substring(word.length() - i, word.length() - i-1).toUpperCase() + lastLetter;
                middleLetters = word.substring(1, word.length() - i).toLowerCase();
            }
            result += firstLetter + middleLetters + lastLetter + " ";
        }
        return result;
    }
}