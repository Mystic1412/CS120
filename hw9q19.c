// Homework-09
#include <stdio.h>
// global array
int arr[] = {10, 2, 31, 44, 0, 9};
int main()
{
    int *s0 = arr;
    int s1 = 0;
    for(int t0 = 0; t0 < 6; t0++)
    {
        if(*s0 > 30){
            s1 = s1 + *s0;
            printf("Result = %d\n", s1);
        }
        s0 = s0 + 1;
    }
    printf("Result = %d\n", s1);
    return 0;
}