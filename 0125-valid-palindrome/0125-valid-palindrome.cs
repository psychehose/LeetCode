public class Solution {
    public bool IsPalindrome(string s) {

        string e = "`~₩!@#$%^&*()-_=+{}[]\\|;:'\",<.>/? ";

        Dictionary<char, int> dict = new Dictionary<char, int>();
        
        foreach(char c in e) {
            dict.Add(c, 0);
        }
        
        int left = 0;
        int right = s.Length - 1;
        
        while(left <= right) {

            if(dict.ContainsKey(Char.ToLower(s[left]))) {
                left++;
                continue;
            }

            if(dict.ContainsKey(Char.ToLower(s[right]))) {
                right--;
                continue;
            }

            // compare
            if(Char.ToLower(s[left]) != Char.ToLower(s[right])) {
                return false;
            }

            left++;
            right--;
        }
        
        return true;
    }
}