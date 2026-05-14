parser grammar Fase_3_compilador;
options { tokenVocab=Fase_2_compilador; } 

code : stat* EOF ;

stat : expr NEWLINE ;

expr : IDENTIFIER                          
     | NUMBER
     | expr POW expr                           
     | expr (MUL | DIV| FLOORDIV | MOD | MATMUL) expr                
     | expr (PLUS | MINUS) expr             
     | LPAREN expr RPAREN                   
     ;
