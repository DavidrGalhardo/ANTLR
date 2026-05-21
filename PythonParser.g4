parser grammar PythonParser;

options { tokenVocab=PythonLexer; }

code
    : stat* EOF
    ;

stat
    : (expr | query) NEWLINE
    ;

expr
    : IDENTIFIER                                            
    | NUMBER                                                 
    | expr ' '* POW ' '* expr                                          
    | expr ' '* (MUL | DIV | FLOORDIV | MOD | MATMUL) ' '* expr       
    | expr ' '* (PLUS | MINUS) ' '* expr                            
    | LPAREN ' '* expr ' '* RPAREN                                  
    ;

query
    : TRUE                                                    
    | FALSE  
    | expr                                              
    | query ' '* (AND | OR) ' '* query                               
    | NOT ' '* query ' '*                                              
    | LPAREN ' '* query ' '* RPAREN                                    
    | query ' '* (EQUAL | NEQUAL | GT | GE | MN | ME) ' '* query
    ;
