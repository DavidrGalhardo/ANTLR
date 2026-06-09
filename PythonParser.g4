parser grammar PythonParser;

options { tokenVocab=PythonLexer; }

code
    : (stat)* EOF
    ;

stat
    : (expr | query | condicional | return_stat| break_stat | continue_stat | pass_stat | loop_for| loop_while| func) NEWLINE?
    ;

break_stat
    : BREAK
    ;

continue_stat
    : CONTINUE
    ;

pass_stat
    : PASS
    ;

return_stat
    : RETURN (' '* (expr| query))?
    ;

condicional
    : IF ' '* query ' '* ':' NEWLINE (' '* stat)+
      (' '* ELIF ' '* query ' '* ':' NEWLINE (' '* stat)+)*
      (' '* ELSE ' '* ':' NEWLINE (' '* stat+))?
    ;

loop_while
    : WHILE ' '* query ' '* ':' NEWLINE
      (' '* stat)+
    ;

loop_for
    : FOR ' '* for_param_list
      ' '* IN ' '*
      (func_call|keywordfunc_call)
      ' '* ':'
      NEWLINE
      (' '* stat NEWLINE*)+
    ;

for_param_list
    : param ( ',' ' '* param)*
    ;

func
    : DEF ' '* IDENTIFIER ' '*
      LPAREN param_list? RPAREN
      (' '* '-''>' ' '* TYPES)?
      ':'
      NEWLINE
      (' '* stat)+
    ;

func_call
    : IDENTIFIER
      LPAREN ' '* arg_list? ' '* RPAREN
    ;

param_list
    : param ( ',' ' '* param)*
    ;

param
    : IDENTIFIER ' '* (':'' '*TYPES)?('=' ' '* expr)?
    ;


keywordfunc_call
    :
    KEYWORD_FUNC
    LPAREN ' '* arg_list? ' '* RPAREN
    ;

arg_list
    : (expr|query) (' '* ',' ' '* (expr | query))*
    ;

expr
    : func_call
    |'-'? IDENTIFIER
    | NUMBER
    | STRING_STRUCTURE
    | LIST_STRUCTURE
    | TUPLE_STRUCTURE
    | DICT_STRUCTURE
    | SET_STRUCTURE
    | keywordfunc_call
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