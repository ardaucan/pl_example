#include <stdio.h>
#include "asacommon.h"

extern int yylex();	// returns our next token	1,2,3... that corresponds to INTEGER, IDENTIFIER, etc.
extern int yylineno;	// current line number that our scanner is in
extern char* yytext;	// is the actual lexeme		54543,a...

DEFINETOKENS


int main(void) {
	int token = yylex();	// got next token
	while(token) {
		printf("Token %s is seen on line %d, value is %s\n", text[token], yylineno, yytext);
		token = yylex();	// next token 
	}
	return 0;
}
