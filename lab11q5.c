#include <stdio.h>

char replace(char ch)
{
	if((ch <= 'G') || (ch >= 'M'))
	{
    	ch = ch + 32;
	}
    printf("%c", ch);

  	return ch;
}

int main()
{
	char arr[] = {'E', 'L', 'V', 'I', 'S'};
  
    for(int i = 0; i < 5; i++)
    {
		arr[i] = replace(arr[i]);
    }

    return 0;
}