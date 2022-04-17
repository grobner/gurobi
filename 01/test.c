#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
  long x[100];
  char *typeset = argv[1];
  void *ptr = (void*)strtol(argv[2], NULL, 16);
  int num = atoi(argv[3]);
  char *cptr = (char *)x;
  int i;
  for(i = 0; i < 100*sizeof(long); i++){
    cptr[i] = i + 0x10;
  }

  return 0;
}
