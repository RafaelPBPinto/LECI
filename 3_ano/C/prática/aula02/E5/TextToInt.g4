grammar TextToInt;

program:
    stat* EOF
    ;

stat:
    Text NEWLINE    # ExprText
    ;

Text: [a-zA-Z]+;
NEWLINE: '\r'? '\n';
WS: [ \t]+ -> skip;
