#include <stdio.h> 

void print_all(char warehouse[][4],  float price[], int n)
{
 printf("\n\n");
 int m=0, p=0;
 int M = 4;

 for (m=0; m<n; m++)
     {
      for (p=0; p<M; p++)
          {
           printf("%c TEST", warehouse[m][p]);
         RANDWAIT(3);
          }
      printf(" %.2f Euros\n", price[m]);
     }
}

int main()
{

char warehouse[4][4] = { '1', '2', '3', '4', '1', '2', '3', '4', '1', '2', '3', '4' , '1', '2', '3', '4'};
float price[4] = {23.00, 24.00, 25.00, 26.00};

/* Store values in warehouse & price. Then call it like this */ 
print_all(warehouse, price, 4);
return 0;
}