%{
#include <stdio.h>
int c = 0;
%}

%%
[a-zA-Z0-9]+  {c++;}
\n {printf("the count is %d", c);}
%%

int yywrap() {
    // You can leave this empty or provide some implementation if needed
}

int main() {
    printf("enter the sentence");
    yylex();
    return 0;
}

