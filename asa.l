%{
#include "asacommon.h"
%}


%%

"WRITE"			return 5;
"EXIT"			return 8;
"("			return 6;
")"			return 7;
"+"			return 9;
"-"			return 11;
"*"			return 10;
"/"			return 12;
"="			return 4;
[-]?[0-9]+		return 2;
[-]?[0-9]+\.[0-9]+	return 3;
[a-z]			return 1;
[ \t]			;
"\n"			{yylineno++;}
";"			return 13;
.			printf("Syntax Error!");

%%

int yywrap(void) {	
	return 1;
}
