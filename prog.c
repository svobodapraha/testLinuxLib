#include <stdio.h>
void ctest1(int *);
void ctest2(int *);

int main()
{
   int x;
   x = 10;
   ctest1(&x);
   printf("Valx=%d\n",x);

   return 0;
}
