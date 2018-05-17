# 1. Version 1
  - Big O is n^2. The nested loop for combining arrays, and the while loop nested in the for loop contribute to this.
  - On line 9 rather than looking up the length of the combined_array and then deleting the last element I simply delete the element at the 0th position to remove the unnecessary calculation of the last element when the sort as a whole works to just grab the 0th element from the combined_array. Using the Benchmark module as a guide I was not able to find any other optimizations that improved the speed of the sort.

# 2. Version 2
  - Big O is n Log n.
  - This improvement is mainly from switching to a Heap sort algorithm in place of the previous insertion sort. I also removed the nested loop when merging the arrays.

# 3. Version 3
  - Big O is n^2.
  - All of the contents of the array are copied into a hash, and then I use Ruby's built in sort (which implements quick sort if I am understanding correctly) on the values of the hash, time complexity is a function of using quick sort.
