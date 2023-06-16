grammar Hello;
main : (greetings | bye)+ ;
greetings : 'hello' ID+ ;
bye : 'bye' ID+ ;
ID : [a-zA-Z]+ ;
WS : [ \t\r\n]+ -> skip ;
