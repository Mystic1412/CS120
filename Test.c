#include <stdio.h>

int main(){

    printf("Hello CS120!\n");

    for(int x = 0; x<3; x++){
        for(int y = 0; y<5;y++){
            if(y+x >= 2 && y-x <=2){
                printf("*");
            }
            else{
                printf(" ");
            }
        }
        printf("\n");
    }
    return 0;
    //single line comment
    /*multi
    line
    comment*/
}