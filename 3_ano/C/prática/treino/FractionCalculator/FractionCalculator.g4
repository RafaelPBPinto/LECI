grammar FractionCalculator;

program: statement* EOF;

statement: (print | assignment) ';';

print: 'print' expr;

assignment: expr '->' expr;

expr returns[boolean isVariable, boolean isText]:
        'read' expr                         # ExprRead
    |   sign=('-'|'+') expr                 # ExprUnary              
    |   expr op=('*'| ':') expr             # ExprMulDiv
    |   expr op=('-'| '+') expr             # ExprAddSub
    |   <assoc=right> expr '^' expr         # ExprPot
    |   'reduce' expr                       # ExprReduce
    |   '(' expr ')'                        # ExprParent  
    |   FRACTION                            # ExprFraction
    |   ID                                  # ExprID
    |   STRING                              # ExprString
    ;

ID: [a-zA-Z_]+;
FRACTION: [0-9]+ ('/'[0-9]+)?;
STRING: '"' .*? '"';
WS: [ \r\n\t] -> skip;
COMMENT: '//' .*? '\n' -> skip;