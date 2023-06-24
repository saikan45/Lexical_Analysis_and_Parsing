%{
#include <stdio.h>
%}

%%
[0-9]+(\.[0-9]+)? {
    printf("Number: %s\n", yytext);
}
[+\-=*/] {
    printf("Operator: %s\n", yytext);
}
[()] {
    printf("Parenthesis: %s\n", yytext);
}
. {
    // Ignore other characters
}
%%

int main()
{
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
