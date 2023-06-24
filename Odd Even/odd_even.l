%{
#include <stdio.h>
%}

/* Rules Section */
%%
[0-9]+ {
    int num = atoi(yytext);
    if (num % 2 == 0) {
        printf("%d is even\n", num);
    } else {
        printf("%d is odd\n", num);
    }
}
. {
    // Ignore unrecognized characters
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