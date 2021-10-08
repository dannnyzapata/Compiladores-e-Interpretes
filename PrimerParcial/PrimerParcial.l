%{
#include<stdio.h>
%}
LetraA a
LetraB b
LetraC c
lenguaje {LetraA}+{LetraC}({LetraA}|{LetraB})+
%%
{lenguaje} {return 0;}
. {return 1;}
%%
int yyerror(char *msg)
{
    return 0;
}
int yywrap(void)
{
    return 0;
}
int main(void)
{
    int resp=-1;
    printf("Dame una cadena que contenga solo a,b y c:");
    resp=yylex();
    if(resp==0)
        printf("Cadena aceptada");
    else
        printf("Cadena no aceptada");
    return 0;
}