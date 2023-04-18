class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        
        var copy = grid
        
        var rowNum = grid.count
        var colNum = grid[0].count

        var width = 0
        var maxWidth = 0

        var check = Array(repeating: Array(repeating: false, count: colNum) , count: rowNum)
        
        func DFS(_ row: Int, _ col: Int) { 
            
            // index out of range - edge
            if row == -1 || col == -1 || row == rowNum || col == colNum {
                return
            }
            
            // 이미 방문한 경우
            if check[row][col] {
                return
            }
            
            // 방문 안한 곳
            else {
                check[row][col] = true

                if copy[row][col] == 0 {
                    return
                }
                width += 1

                DFS(row, col - 1)
                DFS(row, col + 1)
                DFS(row - 1, col)
                DFS(row + 1, col)
            }
        }
        
        
        for row in 0 ..< grid.count {
            for col in 0 ..< grid[0].count {
                // 방문하지 않은 곳
                if check[row][col]  == false {
                    // 1인 경우
                    if copy[row][col] == 1 {

                        width = 0

                        DFS(row, col)
                        maxWidth = max(maxWidth, width)
                    }
                }
            }
        }
        return maxWidth
    }
}

// MARK: -


/*

1을 찾으면 그 순간부터 작동을 해야함. 계속 진행중이라는 것.
[[1,1,0,0,0],[1,1,0,0,0],[0,0,0,1,1],[0,0,0,1,1]]

1 1 0 0 0
1 1 0 0 0
0 0 0 1 1
0 0 0 1 1


*/
