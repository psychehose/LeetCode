class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        // 열이 같은 겨우
        // 행이 같은 경우
        
    
        if image[sr][sc] == color {
            return image
        }
        
        var copy = image
        var target = image[sr][sc]
        var rowlen = image.count // 3
        var collen = image[0].count // 3
        
        func DFS(_ row: Int, _ col: Int) {
            // 종료조건
            if row == -1 || row == rowlen || col == -1 || col == collen {
             return   
            }
            
            if copy[row][col] == target {
                copy[row][col] = color
            } 

            else {
                return 
            }
            
            DFS(row - 1, col)
            DFS(row, col - 1)
            DFS(row + 1, col)
            DFS(row, col + 1)
        }
        
        DFS(sr, sc)
        
        
        return copy
    }
}