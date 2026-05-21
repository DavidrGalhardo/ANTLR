//simbolos//
lexer grammar PythonLexer;

//Operadores Aritméticos//
PLUS: '+' ;
MINUS: '-' ;
POW: '**';
MUL: '*';
DIV: '/';
FLOORDIV: '//';
MOD: '%';
MATMUL: '@';

// Parenteses//
LPAREN: '(' ;
RPAREN: ')' ;
COMNA: ':' ;
SEMICOLON : ';' ;
COMMA     : ',' ;
LBRACE    : '{' ;
RBRACE    : '}' ;

//Operadores Comparação//
EQUAL: '==';
NEQUAL: '!=';
GE: '>=';
GT: '>';
ME: '<=';
MN: '<';

// operadores bit a bit//
AND_E: '&';
OR_BAR: '|';
XOR: '^';
NOT_TIL: '~';
LEFT_SHIFT: '<<';
RIGHT_SHIFT: '>>';

//Operadores atribuição//
ASSIGN_EQUAL: '=';
ASSIGN_PLUS: '+=';
ASSIGN_MINUS: '-=';
ASSIGN_MUL: '*=';
ASSIGN_DIV: '/=';
ASSIGN_FLOORDIV: '//=';
ASSIGN_MOD: '%=';
ASSIGN_POW: '**=';
ASSIGN_MATMUL: '@=';
ASSIGN_AND: '&=';
ASSIGN_OR: '|=';
ASSIGN_XOR: '^=';
ASSIGN_LEFTSHIFT: '<<=';
ASSIGN_RIGHTSHIFT: '>>=';
ASSIGN_WALRUS: ':=';

//Palavras_Chave//
AND: 'and';
OR: 'or';
NOT: 'not';
TRUE: 'True';
FALSE: 'False';
IF: 'if';
ELIF: 'elif';
ELSE: 'else';
FOR:'for';
WHILE:'while';
BREAK: 'break';
CONTINUE: 'continue';
PASS:'pass';
DEF: 'def';
CLASS: 'class';
TRY: 'try';
EXCEPT: 'except';
FINALLY: 'finally';
WITH: 'with';
INT: 'int';
FLOAT: 'float';
BOOL: 'bool';
STR: 'str';
LIST: 'list';
TUPLE: 'tuple';
DICT: 'dict';
SET: 'set';
NONE: 'None';
PRINT: 'print';
INPUT: 'input';
LEN: 'len';
TYPE: 'type';
RANGE: 'range';
SUM: 'sum';
MIN: 'min';
MAX: 'max';
ABS: 'abs';
ROUND: 'round';
SORTED: 'sorted';
ENUMERATE: 'enumerate';
ZIP: 'zip';
MAP: 'map';
FILTER: 'filter';
OPEN: 'open';
IMPORT: 'import';
FROM: 'from';
AS: 'as';
IN: 'in';
IS: 'is';
RETURN: 'return';
LAMBDA: 'lambda';
RAISE: 'raise';
ASSERT: 'assert';
GLOBAL: 'global';
NONLOCAL: 'nonlocal';
DEL: 'del';
YIELD: 'yield';
ASYNC: 'async';
AWAIT: 'await';


NUMBER: INT_NUM | FLOAT_NUM;
fragment INT_NUM : [-]? DIGIT+ ;
fragment FLOAT_NUM : [-]?  [0-9]+ '.' [0-9]+ ([eE] [+-]? [0-9]+)?;
BLANK : ' ';
TAB : '\t';
NEWLINE : [\n]+ ;

IDENTIFIER : LETTER (LETTER | DIGIT)* ;

fragment LETTER : [a-zA-Z_] ;

fragment DIGIT : [0-9] ;

WS : [\r\f]+ -> skip;
