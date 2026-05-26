parser grammar PythonParser;

options { tokenVocab=PythonLexer; }

code
    : (stat | condicional | func | func_call)* EOF
    ;

stat
    : (expr | query | return_stat) NEWLINE
    | condicional
    ;

return_stat
    : RETURN (' '* (expr| query))?
    ;

condicional
    : IF ' '* query ' '* ':' NEWLINE (' '* stat)+
      (' '* ELIF ' '* query ' '* ':' NEWLINE (' '* stat)+)*
      (' '* ELSE ' '* ':' NEWLINE (' '* stat+))?
    ;

func
    : DEF ' '* IDENTIFIER ' '*
      LPAREN param_list? RPAREN
      ':'
      NEWLINE
      (' '* stat)+
    ;

param_list
    : param ( ',' ' '* param)*
    ;

param
    : IDENTIFIER (':'TYPES)?('=' expr)?
    ;

func_call
    : IDENTIFIER
      LPAREN ' '* arg_list? ' '* RPAREN
    ;

arg_list
    : (expr|query) (' '* ',' ' '* (expr | query))*
    ;

expr
    : IDENTIFIER
    | NUMBER
    | func_call
    | expr ' '* POW ' '* expr                                          
    | expr ' '* (MUL | DIV | FLOORDIV | MOD | MATMUL) ' '* expr       
    | expr ' '* (PLUS | MINUS) ' '* expr                            
    | LPAREN ' '* expr ' '* RPAREN
    ;

query
    : TRUE                                                    
    | FALSE  
    | expr                                              
    | query ' '* (AND | OR | '&' | '|') ' '* query                               
    | NOT ' '* query ' '*                                              
    | LPAREN ' '* query ' '* RPAREN                                    
    | query ' '* (EQUAL | NEQUAL | GT | GE | MN | ME) ' '* query
    ;
