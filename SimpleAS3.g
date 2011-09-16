grammar SimpleAS3;

@header {
import java.util.HashSet;
}

@members {
HashSet memory = new HashSet();
String classname = null;
String basename = null;
HashSet interfaces = new HashSet(); 
}

program
: (SL_COMMENT | ML_COMMENT)* 'package' packagename '{' packagebody '}'
; 

packagename
: ID ('.' ID)*
;

packagebody
: (importstatement)* classblock
;

importstatement
: 'import' importpackagename (';')?
;

importpackagename
: ID ('.' ID)* ('.*')?
;

classname
: ID
;

classaccessattr
: 'public'
| 'internal'
| 'dynamic'
;

classblock
: classaccessattr ('class'|'interface') classname {/*System.out.println("class name:" + $classname.text);*/ classname = $classname.text; }
 (classextends)* '{' (declaration)* '}'
;

classextends
: 'extends' base=ID { basename=$base.text; }
| 'implements' inter1=ID {interfaces.add($inter1.text);} (',' inter2=ID {interfaces.add($inter2.text);} )*
;

declaration
: ('public'|'protected')? ('static')? ('var' | 'const') ID 
  ':' vartype=ID {/*System.out.println($vartype.text);*/memory.add($vartype.text); }
  (assignment)? (';')?
| 'private' ('static')? ('var' | 'const') ID ':' ID (assignment)? (';')?
| ('public'|'protected')? 'function' 'get' ID 
  '(' ')' ':' gettype=ID {/*System.out.println($gettype.text);*/memory.add($gettype.text); }
  (';')?
| 'private' 'function' 'get' ID '(' ')' ':' ID (';')?
| ('public'|'protected')? 'function' 'set' ID 
  '(' ID
  ':' settype=ID { memory.add($settype.text); }
  ')' (':' ID)? (';')?
| 'private' 'function' 'set' ID '(' ID ':' ID ')' (':' ID)? (';')?
| ('public'|'protected')? ('static')? 'function' fname=ID {/*System.out.println("function name:" + $fname.text);*/ }
  '(' (ID ':' argtype1=ID { /*System.out.println($argtype1.text);*/ memory.add($argtype1.text); } (assignment)? 
  (',' ID ':' argtype2=ID { /*System.out.println($argtype2.text);*/ memory.add($argtype2.text); } (assignment)? )* )? ')' (':' ID)? (';')?
| 'private' ('static')? 'function' ID '(' (ID ':' ID (assignment)? (',' ID ':' ID (assignment)? )* )? ')' (':' ID)? (';')?
;

assignment
: '=' expression
;

expression
: '(' expression ')'
| '[' expression ']'
| '{' expression '}'
| expr_var (('+' | '-' | '*' | '/' | '%' | '=' | '<<' | '>>' | ',') expr_var)*
;

expr_var
: varname
;

varname
: (INT_LIT | DOUBLE_LIT | BOOLEAN_LIT | STR_LIT | NULL_LIT | ID | newobject )
;

newobject
: 'new' ID ('(' .* ')')?
;

INT_LIT	
: '0' | '1'..'9' ('0'..'9')* 
| ('0x'|'0X') ('0'..'9'|'a'..'f'|'A'..'F')*
;

DOUBLE_LIT : INT_LIT '.' ('0'..'9')* | '.' ('0'..'9')+ ;

CHAR_LIT: '\'' ( ~('\\'|'\r'|'\n') | '\\' ('t' | 'r' | 'n' | '\\' | '\"' | '\'') ) '\'' ;

STR_LIT	
: '\'' ( ~('\\'|'\r'|'\n'|'\''|'\"') | '\\' ('t' | 'r' | 'n' | '\\' | '\"' | '\'') )* '\'' 
| '\"' ( ~('\\'|'\r'|'\n'|'\''|'\"') | '\\' ('t' | 'r' | 'n' | '\\' | '\"' | '\'') )* '\"' 
;

BOOLEAN_LIT : 'true' | 'false' ;

NULL_LIT : 'null' ;

ID : ('a'..'z'|'A'..'Z'|'_'|'$') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')* ;

SL_COMMENT : '//' (~('\r' | '\n'))* '\r'? '\n' {$channel = HIDDEN;} ;

ML_COMMENT : '/*' .* '*/' {$channel = HIDDEN;} ;

WS: (' ' | '\t' | '\r' | '\n') {$channel = HIDDEN;} ;
