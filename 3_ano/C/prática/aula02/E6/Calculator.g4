grammar Calculator;

program:
        stat* EOF
    ;

stat:
        assignment NEWLINE
    |    expr? NEWLINE
    ;

assignment:
        ID '=' expr
    ;

expr:
        op=('+'|'-') expr		    # ExprUnary
    |   expr op=('*'|'/'|'%') expr  # ExprMultDivMod
    |   expr op=('+'|'-') expr      # ExprAddSub
    |   Integer                     # ExprInteger
    |   ID                          # ExprID
    |   '(' expr ')'                # ExprParent
    ;

ID: [a-zA-Z_]+;
Integer: [0-9]+;
NEWLINE: '\r'? '\n';
WS: [ \t]+ -> skip;
COMMENT: '#' .*? '\n' -> skip;