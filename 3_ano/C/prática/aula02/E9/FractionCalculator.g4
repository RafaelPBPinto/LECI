grammar FractionCalculator;

program: stat* EOF;

stat: (print | assign)?';';

print: 'print' expr;

assign: expr '->' Var;
fraction: Integer '/' Integer;

expr: 
        'read' String                       # ExprRead
    |   'reduce' expr                       # ExprReduce
    |   op=('+'|'-') expr                   # ExprUnary
    |   expr op=('*'|':'|'%') expr          # ExprMultDivMod
    |   expr op=('+'|'-') expr              # ExprAddSub
    |   <assoc=right> expr '^' expr         # ExprPot
    |   fraction                            # ExprFraction
    |   Integer                             # ExprInteger
    |   Var                                 # ExprVar
    |   '(' expr ')'                        # ExprParent
    ;

Integer: [0-9]+;
Var: [a-zA-Z_]+;
NEWLINE: '\r'? '\n' -> skip;
String: '"' .*? '"';
WS: [ \t]+ -> skip;
COMMENT: '//' .*? '\n' -> skip;