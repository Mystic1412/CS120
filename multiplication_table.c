#include <stdio.h>
void print_bits(int n, int bits){
  for(int i = bits-1; i>=0; i--){
      if(n & (1<<i)){
        printf("1");
      }else{
        printf("0");
      }
  }
}
void table(int rows, int columns, int bits, int operation){
  for (int r=0; r<= rows; r++){
    for(int c=0; c<=columns; c++){
      int v;
      switch (operation){
        case 0:
          v = r * c;
          break;
        case 1:
          v = r & c;
          break;
        case 2:
          v = r | c;
          break;
      }
      print_bits(v,bits);
      printf(" ");
      }
    printf("\n");
    }
}



int main(){
    table(8, 8, 3, 0);
    printf("\n");
    table(8, 8, 3, 1);
    printf("\n");
    table(8, 8, 3, 2);
}