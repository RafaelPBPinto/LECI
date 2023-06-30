grammar CSV;

@header {
    import static java.lang.System.*;
    import java.util.Arrays;
}

@parser::members {
    protected String[] names = new String[0];
    public int dimNames() { return names.length; }
    public void addName(String name) { 
        names = Arrays.copyOf(names, names.length + 1);
        names[names.length - 1] = name;
    }
    public String getName(int idx) { 
        if (idx >= 0 && idx < names.length) {
            return names[idx];
        } else {
            throw new IndexOutOfBoundsException("Invalid index: " + idx);
        }
     }
}

file: line[true] line[false]* EOF;

line[boolean firstLine] locals [int col = 0]
    : field[$firstLine, $col++] (SEP field[$firstLine, $col++])* '\r'? '\n'
    ;

field[boolean firstLine, int col] returns [String res = ""]
    @after {
        if ($firstLine)
            addName($res);
    }
    : 
    (TEXT { $res = $TEXT.text.trim(); } )   | 
    (STRING { $res = $STRING.text.trim(); } )
    ;

SEP: ','; // ('' | '\t')*
STRING: [\t]* '"' .? '"' [\t];
TEXT: ~[,"\r\n] ~[,\r\n]*;