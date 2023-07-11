public class Solution {
    public string RemoveStars(string s) {
        List<char> stack = new List<char>();

        for (int i=0; i< s.Length; i++) {
            if (s[i] != '*') {
                stack.Add(s[i]);
            } else {
                stack.RemoveAt(stack.Count-1);
            }
        }
        
        
        Console.WriteLine(string.Join("", stack));
        List<string> list = stack.ToArray().Select(e=> e.ToString()).ToList();
        string result = string.Join("", list);
        return result;
    }
}