public class Solution {
    public bool IsAnagram(string s, string t) {
        
        
        Dictionary<char, int> dict = new Dictionary<char, int>();
        
        foreach(char c in s) {
            if(dict.ContainsKey(c)) {
                dict[c] = dict[c] + 1;
            }
            else {
                dict.Add(c, 1);
            }
        }
        
        
        foreach(char c in t) {
            if(dict.ContainsKey(c)) {
                dict[c] = dict[c] - 1;
            }
            else {
                return false;
            }
        }
        
        
        foreach (int val in dict.Values) {
            if (val != 0) {
                return false;
            }
         }
        
        return true;
        
    }
}