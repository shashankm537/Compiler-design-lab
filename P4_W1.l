%option noyywrap
%{
#include <stdio.h>
%}

%%
int|char|float { printf("\n%s->keyword", yytext); }
,|; { printf("\n%s->separator", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("\n%s->identifier", yytext); }
%%

int my_wrap(void) {
    // You can leave this empty or provide some implementation if needed
}

int main() {
    printf("enter:");
    yylex();
    return 0;
}

