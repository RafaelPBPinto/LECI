grammar Tablan;

program: statList EOF;

statList: (stat ';')*;

stat: inst | newTypes;

inst: (declaration | assign | print | add_line | for_loop | while_loop | remove_table | conditional);

newTypes: 
      'type' 'table' name=ID ('->' title=expr)? '{' (field ';')* '}' #tableDef
    | 'type' type ID '{' 'invariant' expr ',' expr ';' '}'           #newType
    ;


field returns[Type _type,String fName,boolean isFormula,String formula]: 
    declaration (fieldAssign)? ;

fieldAssign returns[Type _type, boolean isHeader]:
      ':=' expr   #ValueFieldAssign
    | '->' expr   #HeaderFieldAssign
    ; 

assign:
      target ':=' expr                  #AssignExpr
    | target ':=' 'new' ('(' expr (',' expr)* ')')? #AssignNew
    | target '->' expr                  #AssignHeader
    | target ':=' expr 'when' expr      #AssignWhenExpr
    ;

declaration returns[String varName, Type _type]:
      target ':' (type | target)
    ;

add_line: '[' (expr (',' expr)*)? ']' '>>' target;

remove_table: 'remove' target ('when' expr)?;

print: instPrint=('print' | 'println') expr (',' expr)*;

for_loop: 'for' target 'in' target 'do' block 'end';

while_loop: 'while' expr 'do' block 'end';

expr returns[String varName,Type _type, Boolean isView]:   
        'read' (in='in' (TEXT)? | fich=TEXT ('using' readAttribute (',' readAttribute)*)?)  # ExprRead
    |   op=('+'|'-'|'!') expr                                                               # ExprUnary
    |   e1=expr op=('*'|'/' | '\\\\') e2=expr                                               # ExprMultDivMod
    |   e1=expr op=('+'|'-') e2=expr                                                        # ExprAddSub
    |   'length' target                                                                     # ExprLength
    |   '(' expr ')'                                                                        # ExprParent
    |   expr 'center' expr                                                                  # ExprCenter
    |   type '(' expr ')'                                                                   # ExprTypeCast
    |   expr op=('<' | '>' | '>=' | '<=') expr                                              # ExprBooleanRelational
    |   expr op=('=' | '!=') expr                                                           # ExprBooleanEquality
    |   expr 'and' expr                                                                     # ExprBooleanAND
    |   expr 'or' expr                                                                      # ExprBooleanOR
    |   expr '?' expr ':' expr                                                              # ExprTernary
    |   BOOLEAN                                                                             # ExprBoolean
    |   INTEGER                                                                             # ExprInteger
    |   REAL                                                                                # ExprReal
    |   TEXT                                                                                # ExprText
    |   target                                                                              # ExprTarget
    ;
    
conditional: 
    'if' expr block ('else' block)? 'end' #ConditionalBlock
    ;

block: (inst ';')*;

readAttribute: 'column' expr ('as' ID)?              # ColumnAttribute
            | name=expr ('as' ID)?                   # NamedAttribute
            ;

type returns[Type _type=null]: 
         'integer'          # TypeInteger
     |   'real'             # TypeReal
     |   'text'             # TypeText
     |   'boolean'          # TypeBoolean
     |   'table'            # TypeTable
     |   ID                 # TypeID
     ;

target returns[String varName, Type _type, Type _childType]:
     ID ('.' target)?;

BOOLEAN: 'true' | 'false';
INTEGER: [0-9]+;
REAL: INTEGER '.' INTEGER;
ID: [a-zA-Z_][a-zA-Z0-9_]*;
TEXT: '"' .*? '"';
WS: [ \r\n\t]+ -> skip;
COMMENT: '--' .*? ('\r')?'\n' -> skip;
