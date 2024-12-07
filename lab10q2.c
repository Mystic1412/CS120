#include <stdio.h>

// global array
char arr[] = {'E', 'L', 'V', 'I', 'S'};

int main()
{
    for(int i = 0; i < 6; i++)
    {
    	if((arr[i] <= 'G') || (arr[i] >= 'M'))
        {
    	    arr[i] = arr[i] + 32;
        }
        printf("%c", arr[i]);
    }

    printf("\n");
    return 0;
}