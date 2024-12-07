#include <stdio.h>
void subroutine(int x)
{
    x = 3;
}
int main()
{
    int x = 5;
    subroutine(x);
    printf("%d", x);
    return 0;
}