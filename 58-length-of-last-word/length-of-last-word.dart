class Solution {
  int lengthOfLastWord(String s) {
    s = s.trim(); // Remove leading and trailing spaces
    List<String> words = s.split(' ');
    return words.last.length;
    
  }
}