#include <stdio.h>
#include <stdlib.h>

 

void add_two_numbers (int a, int b)
{
  int a;
  int b;
  int c;

  c = a + b;
  printf("%d\n", c);
}

int main() 
{
  int var1, var2;

  var1 = 1;
  var2 = 53;

  add_two_numbers (var1, var2);
  add_two_numbers (1, 2);
  exit(0);
}