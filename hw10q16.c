#include <stdio.h>

int compute(int n) {
    int t0 = 1;  
    int t1;      

    // Equivalent to the loop 'for'
    for (t1 = 1; t1 <= n; t1++) {
        t0 = t0 * 4; 
    }

    return t0;  
}

int main() {
    int result;
    
    result = compute(5);

    printf("%d\n", result);

    return 0;
}


