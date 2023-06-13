grammar Calculator;

program: statement* EOF;

statement: assignment | expr;

assignment returns[List<String> result]: expr '=' expr;

expr returns[List<String> result, boolean isVariable]:
        expr '\\' expr      # ExprDif
    |   expr '&' expr       # ExprInterception
    |   expr '+' expr       # ExprUnion
    |   '(' expr ')'        # ExprParentesis
    |   conjunto            # ExprConjunto
    |   VARIABLE            # ExprVariable
    ;

conjunto returns[List<String> set]: '{' (wordSeq | numberSeq)? '}';

wordSeq returns[List<String> words]: WORD (',' WORD)*;

numberSeq returns[List<String> numbers]: number (',' number)*;

number: sign=('-'|'+')? LEXER_NUMBER;

VARIABLE: [A-Z]+;
WORD: [a-z]+;
LEXER_NUMBER: [0-9]+;
WS: [ \r\n\t] -> skip;
COMMENT: '--' .*? '\n' -> skip;
