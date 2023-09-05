public class Solution {
    public int CharacterReplacement(string s, int k) {
        
        
        Dictionary<char, int> dict = new Dictionary<char, int>();
        
        foreach(char c in "ABCDEFGHIJKLMNOPQRSTUVWXYZ") {
            dict.Add(c,0);
        }
        
        int left = 0;
        int right = 0;

        int maxf = 0;
        
        int res = 0;
        
        while(right < s.Length) {
            dict[s[right]] = dict[s[right]] + 1;
            
            maxf = Math.Max(maxf, dict[s[right]]);
                        
            if((right - left) + 1 - maxf <= k) {

                res = Math.Max(right - left + 1, res);
                right++;
                
            } else {
                dict[s[left]] = dict[s[left]] - 1;
                left++;
                right++;
            }

        }
        
        return res;
        
        
        
    }
}