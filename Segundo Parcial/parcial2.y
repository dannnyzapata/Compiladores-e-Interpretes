%{
#include<stdio.h>
%}
%token una_a una_b una_c una_d el_enter 
%%
Ini: Expre el_enter {printf("Cadena aceptada!!!");return 0;}
   ;
Expre: una_a Expre una_b 
     | una_c|una_d
     ;
%%
int yyerror(void)
{
    printf("Cadena no acpetada!!!");
    return 1;
}
int yywrap(void)
{
    return 0;
}
int main(void)
{
    printf("Indiqueme una cadena:");
    yyparse();

    // Terminamos la función main
    return 0;
}