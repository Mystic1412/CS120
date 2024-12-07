#include <stdio.h>
void subroutine(int *y)
{
    *y = *y + 50;
}
int main()
{
    int x = 50;
    subroutine(&x);
    printf("%d", x);
    return 0;
}