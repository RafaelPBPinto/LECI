import Ex2.*;

public class TestEx2 {
    public static void main(String[] args) {
        System.out.println("------ example 1 ------");

        TextReaderInterface textReader = new TextReader("example1_ex2.txt");
        System.out.println("textReader = new TextReader(\"example1_ex2.txt\"); :");
        System.out.println(textReader.next());

        System.out.println();

        textReader = new NormalizationFilter(new TextReader("example1_ex2.txt"));
        System.out.println("textReader = new NormalizationFilter(new TextReader(\"example1_ex2.txt\")); :");
        System.out.println(textReader.next());

        System.out.println();

        textReader = new VowelFilter(new TermFilter(new TextReader("example1_ex2.txt")));
        System.out.println("textReader = new VowelFilter(new TermFilter(new TextReader(\"example1_ex2.txt\"))); :");
        System.out.println(textReader.next());

        System.out.println();

        System.out.println("------ example 2 ------");

        textReader = new TextReader("example2_ex2.txt");
        System.out.println("textReader = new TextReader(\"example2_ex2.txt\"); :");
        System.out.println(textReader.next());

        System.out.println();

        textReader = new TermFilter(new TextReader("example2_ex2.txt"));
        System.out.println("textReader = new TermFilter(new TextReader(\"example2_ex2.txt\")); :");
        System.out.println(textReader.next());
        System.out.println(textReader.next());
        System.out.println(textReader.next());

        System.out.println();

        textReader = new VowelFilter(new TermFilter(new TextReader("example2_ex2.txt")));
        System.out.println("textReader = new VowelFilter(new TermFilter(new TextReader(\"example2_ex2.txt\"))); :");
        System.out.println(textReader.next());
        System.out.println(textReader.next());
        System.out.println(textReader.next());

        System.out.println();

        System.out.println("------ example 3 ------");

        textReader = new TextReader("example3_ex2.txt");
        System.out.println("textReader = new TextReader(\"example3_ex2.txt\"); :");
        System.out.println(textReader.next());

        System.out.println();

        textReader = new VowelFilter(new TextReader("example3_ex2.txt"));
        System.out.println("textReader = new VowelFilter(new TextReader(\"example3_ex2.txt\")); :");
        System.out.println(textReader.next());

        System.out.println();

        textReader = new NormalizationFilter(new VowelFilter(new TextReader("example3_ex2.txt")));
        System.out.println("textReader = new NormalizationFilter(new VowelFilter(new TextReader(\"example3_ex2.txt\"))); :");
        System.out.println(textReader.next());

        System.out.println();

        textReader = new NormalizationFilter(new VowelFilter(new TermFilter(new TextReader("example3_ex2.txt"))));
        System.out.println("textReader = new NormalizationFilter(new VowelFilter(new TermFilter(new TextReader(\"example3_ex2.txt\")))); :");
        System.out.println(textReader.next());
        System.out.println(textReader.next());
        System.out.println(textReader.next());
        System.out.println(textReader.next());
        System.out.println(textReader.next());

        System.out.println();
    }    
}
