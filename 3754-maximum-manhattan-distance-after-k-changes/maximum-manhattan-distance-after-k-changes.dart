class Solution {
  int maxDistance(String s, int k) {
    int ans = 0;
    int north = 0, south = 0, east = 0, west = 0;

    for (int i = 0; i < s.length; i++) {
      switch (s[i]) {
        case 'N':
          north++;
          break;
        case 'S':
          south++;
          break;
        case 'E':
          east++;
          break;
        case 'W':
          west++;
          break;
      }

      int times1 = [north, south, k].reduce((a, b) => a < b ? a : b);
      int times2 = [east, west, k - times1].reduce((a, b) => a < b ? a : b);

      ans = ans > _count(north, south, times1) + _count(east, west, times2)
          ? ans
          : _count(north, south, times1) + _count(east, west, times2);
    }

    return ans;
  }

  int _count(int drt1, int drt2, int times) {
    return (drt1 - drt2).abs() + times * 2;
    
  }
}