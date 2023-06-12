grammar Questions;

program: statement* EOF;

statement: questionID '(' STRING ')' '{' alinea+ '}';

questionID returns[String id]: ID '.' ID;

alinea returns[String text]: STRING ':' INTEGER ';';

INTEGER: [0-9]+;
ID: [a-zA-Z_0-9]+;
STRING: '"' .*? '"';
WS: [ \r\n\t] -> skip;
COMMENT: '#' .*? '\n' -> skip;