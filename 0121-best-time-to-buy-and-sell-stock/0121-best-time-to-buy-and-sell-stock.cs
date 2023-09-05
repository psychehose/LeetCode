public class Solution {
    public int MaxProfit(int[] prices) {
        
        
        int max = 0;
        
        
        int left = 0;
        int right = 1;
        
        while(right < prices.Length) {
            
            if(prices[left] >=  prices[right]) {
                left = right;
                right = left +1;
                continue;
            }
               
            max = Math.Max(max, prices[right] - prices[left]);
            right++;
        }
        
        


        return max;
    }
}