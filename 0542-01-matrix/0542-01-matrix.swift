class Solution {
    
    // Using dynamic programming

    func updateMatrix(_ mat: [[Int]]) -> [[Int]] {
        var row = mat.count
        var col = mat[0].count
        
        var mat_dp: [[Int]] = Array(
            repeating: Array(repeating: Int.max - 1000000, count: col), count: row)
        

        for i in 0 ..< row {
            for j in 0 ..< col {
                if mat[i][j] == 0 {
                    mat_dp[i][j] = 0
                }
                
                else {
                    if i > 0 {
                        mat_dp[i][j] = min(mat_dp[i][j], mat_dp[i-1][j] + 1)
                    }
                    
                    if j > 0 {
                        mat_dp[i][j] = min(mat_dp[i][j], mat_dp[i][j-1] + 1)
                    }
                }
            }
        }
        
        
        for i in (0 ..< row).reversed() {
            for j in (0 ..< col).reversed() {

                

                    if i < row - 1 {
                        mat_dp[i][j] = min(mat_dp[i][j], mat_dp[i+1][j] + 1)
                    }
                    
                    if j < col - 1 {
                        mat_dp[i][j] = min(mat_dp[i][j], mat_dp[i][j+1] + 1)
                    }
            }
        }
        
        return mat_dp
    }
    
    
    
    
//     // Using BFS
//     func updateMatrix(_ mat: [[Int]]) -> [[Int]] {   
        
//         var row = mat.count
//         var col = mat[0].count
//         var mat_bfs: [[Int]] = Array(
//             repeating: Array(repeating: Int.max, count:col), count:row)
        
//         var queue: [(Int, Int)] = []
        
        
//         for i in 0 ..< row {
//             for j in 0 ..< col {
//                 if mat[i][j] == 0 {
//                     mat_bfs[i][j] = 0
//                     queue.append((i, j))
//                 }
//             }
//         }
        
//         var dxdy: [(Int, Int)] = [(-1, 0), (1,0), (0, -1), (0, 1)]
        
        
//         while(!queue.isEmpty) {
//             var element = queue.removeFirst()
            
//             for d in dxdy {
//                 var newX = (element.0 + d.0)
//                 var newY = (element.1 + d.1)
                
//                 if newX >= 0 && newX < row && newY >= 0 && newY < col {
//                     if mat_bfs[newX][newY] > mat_bfs[element.0][element.1] + 1 {
//                         mat_bfs[newX][newY] = mat_bfs[element.0][element.1] + 1
//                         queue.append((newX, newY))
//                     }
//                 }
                
//             }
            
//         }
//         // 0 0 0  
//         // 0 1 0
//         // 1 1 1
        
//         // 0 0 0  
//         // 0 M 0
//         // M M M
        
//         // 0 0 0  
//         // 0 1 0
//         // M M M
        
//         // 0 0 0  
//         // 0 1 0
//         // 1 M M
        
//         // 0 0 0  
//         // 0 1 0
//         // 1 M 1
        
//         // 0 0 0  
//         // 0 1 0
//         // 1 2 1
//         return mat_bfs
//     }
    
    
    // Using Brute Force
//     func updateMatrix(_ mat: [[Int]]) -> [[Int]] {
     
//         // Brute Force - 시간 제한 초과
        
//         var row = mat.count
//         var col = mat[0].count

//         var mat_bt: [[Int]] = Array(
//             repeating: Array(repeating: Int.max, count: col),
//             count:row
//         )
        
//         for i in 0 ..< row {
//             for j in 0 ..< col {
//                 // 0 인 경우
//                 if mat[i][j] == 0 {
//                     mat_bt[i][j] = 0
//                 }
//                 // 1인 경우 -> 다시 돌아서 거리 찾기.
//                 else {
//                     for k in 0 ..< row {
//                         for l in 0 ..< col {
//                             if mat[k][l] == 0 {
//                                 var distance = abs(k - i) + abs(l - j)
//                                 mat_bt[i][j] = min(mat_bt[i][j], distance)
//                             }
//                         }
//                     }
//                 }
//             }
//         }
        
//         return mat_bt
//     }
}



