%{
#include "asacommon.h"
%}


%%

"WRITE"			return 1;
"EXIT"			return 2;
"("			return 3;
")"			return 4;
"+"			return 5;
"-"			return 6;
"*"			return 7;
"/"			return 8;
"="			return 9;
[-]?[0-9]+		return 10;
[-]?[0-9]+\.[0-9]+	return 11;
[a-z]			return 12;
[ \t\n]			;
";"			return 13;
.			printf("Syntax Error!");

%%

int yywrap(void) {	
	return 1;
}
