#include <stdio.h>

#define ITER 0
#define END 4
#define NEXT ((ITER+1)%END)

int main() {
  char* s = "#include <stdio.h>%c%c#define ITER %d%c#define END %d%c#define NEXT ((ITER+1)%%END)%c%cint main() {%c  char* s = %c%s%c;%c  printf(s,10,10,NEXT,10,END,10,10,10,10,34,s,34,10,10,10,10);%c  return 0;%c}%c";
  printf(s,10,10,NEXT,10,END,10,10,10,10,34,s,34,10,10,10,10);
  return 0;
}
