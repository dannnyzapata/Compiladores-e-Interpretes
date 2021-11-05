%{
#include "parcial2.tab.h"
%}
la_letra_a a
la_letra_b b
la_letra_c c
la_letra_d d
un_enter \n
%%
{la_letra_a} {return una_a;}
{la_letra_b} {return una_b;}
{la_letra_c} {return una_c;}
{la_letra_d} {return una_d;}
{un_enter}   {return el_enter;}
%%
