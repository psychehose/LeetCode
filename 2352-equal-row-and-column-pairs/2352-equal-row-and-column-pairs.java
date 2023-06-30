class Solution {
    public int equalPairs(int[][] grid) {
        int [] flat = new int[grid.length * grid[0].length];

        HashMap<List<Integer>, Integer> map = new HashMap<List<Integer>, Integer>();
        int res = 0;
        int dimension = grid.length;


        for(int i=0; i<grid.length; i++) {
            for(int j=0; j<grid[i].length; j++) {
                flat[( i * grid[i].length ) + j ] = grid[i][j];
            }
        }
        
// 2, 1, 0
        for(int i = dimension - 1; i >= 0; i--) {
            int[] temp = new int[dimension];
            int count = 0;
            // 3 - 2- 1 j.< 9 - 2 7
            // 0 3 6
            for(int j=dimension-i-1; j < flat.length - i; j+=dimension ) {
                temp[count] = flat[j];
                count += 1;
            }

            List<Integer> list = Arrays.stream(temp).boxed().collect(Collectors.toList());

            if (map.containsKey(list)) {
                Integer val = map.get(list) + 1;
                map.put(list, Integer.valueOf(val));
            } else {
                map.put(list, Integer.valueOf(1));
            }
        }
        
        for(int i=0; i< dimension; i++) {
            int[] row = grid[i];
            
            List<Integer> list = Arrays.stream(row).boxed().collect(Collectors.toList());
            
            if (map.containsKey(list)) {
                res += map.get(list).intValue();
            }
            
        }
        return res;
    }
}