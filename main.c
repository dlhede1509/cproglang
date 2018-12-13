#include <stdio.h>

int main()
{
  int a = (5 + 2) * 10;

  int c = 10 + 5 - 3 * 2 / 4;
  float f = 10 + 5 - 3 * 2 / 4.7490;

  printf("a - %d, c=%d, f=%f/n", a, c, f);

  int d = 10 / 3;
  int r = 10 % 3;
  printf("10/3=%d and 10 %% 3 = %d/n", d, r);
}