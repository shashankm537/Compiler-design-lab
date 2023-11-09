%option noyywrap
%{
#include<stdio.h>
%}
%%
[0-9]+ {printf("number:%s\n",yytext);}
[+-] {printf("operator:%s\n",yytext);}
[ \t\n]  { /*ignore whitespaces and newline*/ }
[a-zA-Z]*  {printf("invalid character:%s\n",yytext);}
%%

int main()
{
    printf("enter");
    yylex();
    return 0;
}

