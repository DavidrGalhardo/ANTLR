parser grammar PythonParser;
options { tokenVocab=PythonLexer; } 

code : stat* EOF ;

stat : expr NEWLINE ;

expr : IDENTIFIER                          
     | NUMBER                           
     | expr (MUL | DIV) expr                
     | expr (PLUS | MINUS) expr             
     | LPAREN expr RPAREN                   
     ;
