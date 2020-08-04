%{

#include <stdio.h>
%}

%token NUMBER
%token ADD SUB MUL DIV ABS
%token OP CP
%token EOL

%%

calclist: /* Nothing */
| calclist exp EOL { printf("= %d\n> ", $2); }
| calclist EOL { printf("> "); } /* blank line or a comment */
;

exp: factor 
| exp ADD factor { $$ = $1 + $3;}
| exp SUB factor { $$ = $1 - $3;}
;

factor: term
| factor MUL term { $$ = $1 * $3; }
| factor DIV term { $$ = $1 / $3; }
;

term: NUMBER
|ABS term {$$ = $2 >= 0? $2 : -$2;}
|OP exp CP { $$ = $2; } 
;

%%

int main(int argc, char** argv) 
{
    printf("> ");     
    yyparse();
}

yyerror(char *s)
{
  fprintf(stderr, "error: %s\n", s);
}
