public class Solution {
    public int MaxArea(int[] height) {

        int left = 0;
        int right = height.Length - 1;
        
        int max = 0;

        while(left < right) {
            
            int b = right - left;
            int h = Math.Min(height[left], height[right]);
            
            max = Math.Max(b * h, max);
            
            if(height[left] == height[right]) {
                left++;
                right--;
            }

            else if(height[left] <= height[right]) {
                left++;
            }
            else {
                right--;
            }
        }
        
        return max;
    }
}