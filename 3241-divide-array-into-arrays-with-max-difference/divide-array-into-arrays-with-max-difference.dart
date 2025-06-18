class Solution {
  List<List<int>> divideArray(List<int> nums, int k) {
     nums.sort(); // Step 1: Sort

    List<List<int>> result = [];

    for (int i = 0; i < nums.length; i += 3) {
      if (i + 2 >= nums.length) return []; 

      int a = nums[i], b = nums[i + 1], c = nums[i + 2];
      if (c - a <= k) {
        result.add([a, b, c]);
      } else {
        return []; 
      }
    }

    return result;
    
  }
}