%{
#include <stdio.h>
int vow_count = 0;
int const_count = 0;
%}

%%
[aeiouAEIOU] { vow_count++; }
[^aeiouAEIOU\n] { const_count++; }
\n { printf("vow_count=%d,const_count=%d", vow_count, const_count); }
%%

int yywrap() {
    // You can leave this empty or provide some implementation if needed
}

int main() {
    printf("enter the string of vowels and consonants:");
    yylex();
    return 0;
}

