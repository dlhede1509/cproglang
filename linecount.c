#include <stdio.h>

main()
{
    int c, n1;

    n1 = 0;
    while ((c = getchar()) != EOF)
        if (c == '\n')
            ++n1;
    printf("%d\n", n1);
}



const linear = (x, array) => {
    let x = x;
    for (i = 0; i < array.length; i += 1) {
        array[i] == x;
        return i;
    }
};
values = [1, 2, 3, 4, 5, 6];
console.log(linear(3, values));
