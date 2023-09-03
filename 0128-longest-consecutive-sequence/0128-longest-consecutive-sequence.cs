public class Solution {
    public int LongestConsecutive(int[] nums) {
        
        
        if(nums.Length == 0) { return 0; }
        
        // Sort를 한다. O(n)
        
        int[] sorted = nums.Distinct().OrderBy(n=>n).ToArray();
        
        
        int prev = sorted[0];
        
        int seq_count = 1;

        int max = 1;
        
        for (int i = 1; i < sorted.Length; i++) {
            
            if(sorted[i] == prev + 1) {
                seq_count++;
            }

            else {
                seq_count = 1;
            }
            
            max = Math.Max(max, seq_count);
            prev = sorted[i];
        }
        
        return max;
    }
}