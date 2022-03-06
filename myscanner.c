#include <stdio.h>
#include "asacommon.h"

extern int yylex();	// returns our next token	1,2,3... that corresponds to INTEGER, IDENTIFIER, etc.
extern int yylineno;	// current line number that our scanner is in
extern char* yytext;	// is the actual lexeme		54543,a...



int main(void) {
	int token = yylex();	// got next token
	while(token) {
		printf("%d\n", token);	// prints the corresponding int value of the token
		token = yylex();	// next token 
	}
	return 0;
}
