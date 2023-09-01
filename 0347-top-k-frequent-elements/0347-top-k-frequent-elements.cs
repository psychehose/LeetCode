public class Solution {
    public int[] TopKFrequent(int[] nums, int k) {
        
        Dictionary<int, int> dict = new Dictionary<int, int>();
        
        
        foreach(int num in nums) {
            if(dict.ContainsKey(num)) {
                dict[num] = dict[num] + 1;
            } else {
                dict.Add(num, 1);
            }
        }
        
        // List<int> sorted = dict.OrderBy(i=>)
        
        dict = dict.OrderByDescending(i=>i.Value).ToDictionary(i=>i.Key, i=>i.Value);
        
        List<int> topK = new List<int>();
    
 
        foreach(int key in dict.Keys) {
            if(topK.Count() == k) {
                break;
            }
            topK.Add(key);
        }
        
        return topK.ToArray();
        
        
    }
}