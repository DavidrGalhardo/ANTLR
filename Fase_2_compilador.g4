//simbolos//
lexer grammar PythonLexer;

//Operadores Aritméticos//
PLUS: '+' ;
MINUS: '-' ;
MUL: '*';
DIV: '/';
FLOORDIV: '//';
MOD: '%';
POW: '**';
MATMUL: '@';

// Parenteses//
LPAREN: '(' ;
RPAREN: ')' ;

//Operadores Comparação//
EQUAL: '==';
NEQUAL: '!=';
GT: '>';
GE: '>=';
MN: '<';
ME: '<=';

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


NUMBER : DIGIT+ ;
NEWLINE : [\r\n]+ ;

// --- REGRAS FINAIS

// Identificadores 
IDENTIFIER : LETTER (LETTER | DIGIT)* ;

// Letras 
fragment LETTER : [a-zA-Z_] ;

// Dígitos
fragment DIGIT : [0-9] ;

// Espaços em branco 
WS : [ \t]+ -> skip ;
