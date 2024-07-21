#include<stdio.h>
/*
   This program will print its own source when run.
*/
char nl(){/*
             Returns the NEWLINE char
          */return 10;}
int main(){char*c="#include<stdio.h>%2$c/*%2$c   This program will print its own source when run.%2$c*/%2$cchar nl(){/*%2$c             Returns the NEWLINE char%2$c          */return 10;}%2$cint main(){char*c=%1$c%7$s%1$c;printf(c,34,nl());}%2$c";printf(c,34,nl());}
