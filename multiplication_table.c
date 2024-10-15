#include <stdio.h>

void table(int rows, int columns, int bits, int operation){


switch (operation)
{
  case 0:
    v = i * j;
    break;
  case 1:
    v = i & j;
    break;
  case 2:
    v = i | j;
    break;
}
}
int main(){
    table(8, 8, 3, 0);
    printf("\n");
    table(8, 8, 3, 1);
    printf("\n");
    table(8, 8, 3, 2);
}