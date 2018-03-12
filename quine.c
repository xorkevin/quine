#include <stdio.h>

#define ITER 0
#define END 4

int main() {
  char* s = "#include <stdio.h>%c%c#define ITER %d%c#define END %d%c%cint main() {%c  char* s = %c%s%c;%c  printf(s,10,10,ITER,10,END,10,10,10,34,s,34,10,10,10,10);%c  return 0;%c}%c";
  printf(s,10,10,ITER,10,END,10,10,10,34,s,34,10,10,10,10);
  return 0;
}
