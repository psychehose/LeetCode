public class Solution {
    public int MaxProfit(int[] prices) {
        
        int max = 0;
        
        int input = 100000;
        
        int left = 0;
        
        
        for (int i = 0; i < prices.Length - 1; i++) {
            
            if(input <= prices[i]) {
                continue;
            }

            input = prices[i];

            for (int j = i + 1; j < prices.Length; j++) {
                max = Math.Max(max, prices[j] - input);
            }
        }


        return max;
    }
}