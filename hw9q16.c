#include <stdio.h>
int z[] = {31, 44, 51, 17, 0};
int subroutine(int *x)
{
    int largest = x[0];
    while (*x != 0)
    {
        if (*x > largest)
            largest = *x;
        x = x + 1;
    }
    return largest;
}
int main()
{
    printf("%d", subroutine(z));
    return 0;
}