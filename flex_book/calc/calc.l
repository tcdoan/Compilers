%{
#include "calc.tab.h"
%}

%%
"+" { return ADD; }
"-" { return SUB; }
"*" { return MUL; }
"/" { return DIV; }
"|" { return ABS; }
[0-9]+ { 
    yylval = atoi(yytext);
    return NUMBER; 
}
\n { return EOL; }
[ \t] {/* ignore whitespace */}
. { printf ("Myth char %c \n", *yytext); }

%%