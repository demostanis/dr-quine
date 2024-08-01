#include<stdio.h>
/*
   This program will print its own source when run.
*/
char nl(){return 10;}
int main(){/*
             Insert comment here
          */char*c="#include<stdio.h>%2$c/*%2$c   This program will print its own source when run.%2$c*/%2$cchar nl(){return 10;}%2$cint main(){/*%2$c             Insert comment here%2$c          */char*c=%1$c%7$s%1$c;printf(c,34,nl());}%2$c";printf(c,34,nl());}
