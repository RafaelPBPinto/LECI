grammar FracLang;

program: statement* EOF;

statement: (display | assignment) ';';

display: 'display' expr;

assignment: expr '<=' expr;

expr returns[boolean isVariable, boolean isText]:
        'read' expr                 # ExprRead
    |   sign=('-'|'+') expr         # ExprUnary
    |   expr op=('*'| ':') expr     # ExprMulDiv
    |   expr op=('-'|'+') expr      # ExprAddSub
    |   'reduce' expr               # ExprReduce
    |   '(' expr ')'                # ExprParentesis
    |   fraction                    # ExprFraction
    |   ID                          # ExprID
    |   TEXT                        # ExprText
    ;

fraction: INTEGER ('/' INTEGER)?;

ID: [a-z_]+;
INTEGER: [0-9]+;
WS: [ \r\n\t] -> skip;
TEXT: '"' .*? '"';
COMMENT: '--' .*? '\n' -> skip; 
