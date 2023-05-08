grammar Calculator;

program: stat* EOF;

stat: (assign | expr) NEWLINE;

assign: VAR '=' expr;

expr: 
        op=('+'|'-') NUMBER         # ExprUnary
    |   '{' WORD (',' WORD)+'}'     # ExprSetWords
    |   '{' NUMBER (',' NUMBER)+'}' # ExprSetNumbers
    |   WORD                        # ExprWord
    |   NUMBER                      # ExprNumber
    ;

VAR: [A-Z_]+;
WORD: [a-z]+;
NUMBER: [1-9]+;
NEWLINE: '\n';
WS: [ \t\r]+ -> skip;
COMMENT: '--' .*? '\n' -> skip;