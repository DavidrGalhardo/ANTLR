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
SEMICOLON : ';' ;
COLON: ':' ;
COMMA: ',' ;
LBRACE: '{' ;
RBRACE: '}' ;

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

KEYWORD_FUNC: PRINT | INPUT | LEN | RANGE | SUM | MIN | MAX | ABS | ROUND | SORTED | ENUMERATE | ZIP | MAP | FILTER | OPEN;
fragment PRINT: 'print';
fragment INPUT: 'input';
fragment LEN: 'len';
fragment TYPE: 'type';
fragment RANGE: 'range';
fragment SUM: 'sum';
fragment MIN: 'min';
fragment MAX: 'max';
fragment ABS: 'abs';
fragment ROUND: 'round';
fragment SORTED: 'sorted';
fragment ENUMERATE: 'enumerate';
fragment ZIP: 'zip';
fragment MAP: 'map';
fragment FILTER: 'filter';
fragment OPEN: 'open';

TYPES: INT | FLOAT | COMPLEX | BOOL | STR | LIST | TUPLE | DICT | SET | NONE;
fragment INT: 'int';
fragment FLOAT: 'float';
fragment BOOL: 'bool';
fragment STR: 'str';
fragment LIST: 'list';
fragment TUPLE: 'tuple';
fragment DICT: 'dict';
fragment SET: 'set';
fragment NONE: 'None';
fragment COMPLEX: 'compex';

NUMBER: COMPLEX_NUM | FLOAT_NUM |INT_NUM ;
fragment COMPLEX_NUM : ((INT_NUM|FLOAT_NUM) [+-])? (INT_NUM|FLOAT_NUM) [jJ];
fragment INT_NUM : [-]? DIGIT+;
fragment FLOAT_NUM : 
    [-]?DIGIT+ '.' DIGIT* ([eE] [+-]? DIGIT+)?
    | '.' DIGIT+ ([eE] [+-]? DIGIT+)?
    ;
BLANK : ' ';
TAB : '\t';
NEWLINE : [\n]+ ;

IDENTIFIER : LETTER (LETTER | DIGIT)* ;

fragment LETTER : [a-zA-Z_] ;

fragment DIGIT : [0-9] ;

WS : [\r\f]+ -> skip;
