#include<stdio.h>
/*
   Hello world!
*/
#define FN "Grace_kid.c"
#define printouf(...)fprintf(fopen(FN,"w"),__VA_ARGS__);
#define FT(x)int main(){printouf(x,34,10,x)}
char*s="#include<stdio.h>%2$c/*%2$c   Hello world!%2$c*/%2$c#define FN %1$cGrace_kid.c%1$c%2$c#define printouf(...)fprintf(fopen(FN,%1$cw%1$c),__VA_ARGS__);%2$c#define FT(x)int main(){printouf(x,34,10,x)}%2$cchar*s=%1$c%3$s%1$c;%2$cFT(s)%2$c";
FT(s)
