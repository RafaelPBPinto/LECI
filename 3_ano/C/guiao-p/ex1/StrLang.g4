grammar StrLang;

program: statement* EOF;

statement: (assignment | print);

assignment: expr ':' expr;

print: 'print' expr;

expr returns[boolean isID]:
        expr '+' expr           # ExprConcat
    |   expr '-' expr           # ExprRemove
    |   trim                    # ExprTrim
    |   '(' expr ')'            # ExprParent
    |   expr '/' expr '/' expr  # ExprSub
    |   input                   # ExprInput
    |   STRING                  # ExprString
    |   ID                      # ExprID
    ;

input: 'input' '(' expr? ')';

trim: 'trim' expr;

ID: [a-zA-Z0-9_]+;
STRING: '"' .*? '"';
WS: [ \r\n\t] -> skip;
COMMENT: '//' .*?  '\n' -> skip;