int i = 5;
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
char*v="int i = %1$d;%3$c#include<stdio.h>%3$c#include<stdlib.h>%3$c#include<string.h>%3$cchar*v=%2$c%4$s%2$c;%3$cint main(){if((strcmp(__FILE__,%2$cSully.c%2$c)?--i:i)==-1)return(0);char*b;asprintf(&b,%2$cSully_%%d.c%2$c,i);FILE*g=fopen(b,%2$cw%2$c);fprintf(g,v,i,34,10,v);fclose(g);char*k;asprintf(&k,%2$ck=%%s;clang $k -o ${k%%%%%%%%.c}&&./${k%%%%%%%%.c}%2$c,b);system(k);}%3$c";
int main(){if((strcmp(__FILE__,"Sully.c")?--i:i)==-1)return(0);char*b;asprintf(&b,"Sully_%d.c",i);FILE*g=fopen(b,"w");fprintf(g,v,i,34,10,v);fclose(g);char*k;asprintf(&k,"k=%s;clang $k -o ${k%%%%.c}&&./${k%%%%.c}",b);system(k);}
