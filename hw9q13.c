#include <stdio.h>
void subroutine(int *x)
{
    *x = 41;
}
int main()
{
    int x = 15;
    subroutine(&x);
    printf("%d", x);
    return 0;
}