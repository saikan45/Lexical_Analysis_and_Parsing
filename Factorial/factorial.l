%{
#include <stdio.h>
#include <stdlib.h>

// Function to calculate the factorial
int factorial(int n) {
    if (n <= 0)
        return 1;

    int result = 1;
    for (int i = 1; i <= n; i++) {
        result *= i;
    }

    return result;
}
%}

%%
[0-9]+ {
    int n = atoi(yytext);
    int result = factorial(n);
    printf("Factorial of %d is %d\n", n, result);
}
.|\n {}

%%


int main() {
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}