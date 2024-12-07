#include <stdio.h>
int z[] = {13, 41, 25, 10};
void subroutine(int *x)
{
    x[2] = x[0] + x[1];
}
int main()
{
    subroutine(z);
    printf("%d", z[2]);
    return 0;
}