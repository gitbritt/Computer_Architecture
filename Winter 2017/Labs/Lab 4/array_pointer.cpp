#include <iostream>
using namespace std;


int sum_array(int *arr, int length) {
   int    i, sum = 0;       
   int avg;          

   for (i = 0; i < length; ++i) {
      sum += arr[i];
   }

   return sum;
}

int main () {
   // an int array with 5 elements.
   int balance[5] = {0, 1, 2, 3, 4};
   int sum;
   sum = sum_array( balance, 5 ) ;
   cout << "Sum is: " << sum << endl; 
    
   return 0;
}