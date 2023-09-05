public class Solution {
    public int LengthOfLongestSubstring(string s) {
        
        
        int max = 0;
        
        string substring = "";
        
        int left = 0;
        int right = 0;
        
        while(right < s.Length) {
            
            if (substring.Contains(s[right])) {

                left = substring.IndexOf(s[right]) + 1;
                substring = substring.Substring(left);  
                continue;
            }
            
            substring += s[right];
            
            max = Math.Max(max, substring.Length);
            right++;
            
        }
        
        
        
        
        return max;
            
    }
}