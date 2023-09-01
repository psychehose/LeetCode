public class Solution {
    public IList<IList<string>> GroupAnagrams(string[] strs) {
        
        Dictionary<string, List<string>> dict = new Dictionary<string, List<string>>();
        
        foreach (string s in strs) {
            Dictionary<char, int> d = new Dictionary<char, int>();

            foreach(char c in s) {
                if (d.ContainsKey(c)) {
                    d[c] = d[c] + 1;
                }
                
                else {
                    d.Add(c, 1);
                }
            }
            
            // make string key eaf -> a1e1f1
            string key = "";
            foreach(char c in d.Keys.OrderBy(i=>i)) {
                key = key + c + d[c].ToString();
            }
            
            if (dict.ContainsKey(key)) {
                List<string> list = dict[key];
                list.Add(s);

                dict[key] = list;

            } else {
                List<string> list = new List<string>{ s };
                dict.Add(key, list);
            }
        }
        
        
    

        return dict.Values.ToArray();
    }
}