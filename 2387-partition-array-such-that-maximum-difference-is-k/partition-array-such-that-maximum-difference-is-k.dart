class Solution {
  int partitionArray(List<int> nums, int k) {
     nums.sort(); // Step 1

    int count = 0;
    int i = 0;

    while (i < nums.length) {
      int start = nums[i]; 
      count++;
      
      while (i < nums.length && nums[i] - start <= k) {
        i++;
      }
    }

    return count;
  }
}