// Example program
#include <iostream>
#include <string>
//Pre define everything
int foo [20] = { 1, 5, 3, 7, 7, 6, 3, 34, 2, 4, 9, 3, 6, 2, 30 , 45, 2, 65, 12, 54 };
void selection_sort(int *nums, int length);
void swap(int *nums, int index1, int index2);
//Done pre defining everything



int main()
{
    selection_sort(foo, 20);
    for(int i = 0; i < 20; i++)
    {
        std::cout << foo[i] << " ";
    }
}
void selection_sort(int *nums, int length)
{
    for(int i = 0; i < length; i++)
    {
        int index_of_min = i;

        for(int j = i; j < length; j++)
        {
            if(nums[index_of_min] > nums[j])
            {
                index_of_min = j;
            }
        }
    swap(nums, i, index_of_min);
    }
    
}
void swap(int *nums, int index1, int index2)
{
    int temp = nums[index1];
    nums[index1] = nums[index2];
    nums[index2] = temp;
}
