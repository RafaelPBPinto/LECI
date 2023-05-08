grammar Questions;

program: stat* EOF;

stat: ID'(' question '){' response ':' mark ';';
question: '"' String
ID: String '.' String;