public class Solution {
    public int LengthOfLongestSubstring(string s) {
        
        int max = 0;    
        Dictionary<char, int> dict = new Dictionary<char, int>();
        
        int left = 0;
        int right = 0;

        while(right < s.Length) {
            if (dict.ContainsKey(s[right])) {
                // repeated char
                
                max = Math.Max(max, dict.Keys.Count());
                
                left = dict[s[right]] + 1;

                // left = dict[s[right]];
                right = left;
                dict.Clear();

                continue;
            }
            
            dict.Add(s[right], right);
            right++;
        }
        
        
        max = Math.Max(max, dict.Keys.Count());
        return max;
    }
}