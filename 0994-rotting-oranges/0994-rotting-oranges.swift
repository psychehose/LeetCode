class Solution {
    func orangesRotting(_ grid: [[Int]]) -> Int {
        
        if !(grid.flatMap { $0 }.contains(1)) {
            return 0
        }
        

        
        var row = grid.count
        var col = grid[0].count

        var copy = grid
        
        var res = 0
        
        var queue: [[Int]] = []

        
        var currentLevel = 0 

        
   
        for i in 0 ..< row {
            for j in 0 ..< col {
                if grid[i][j] == 2 {
                    queue.append([i,j, 0])
                }
            }
        }
        
        
        
    
        
        while(!queue.isEmpty) {
            var element = queue.removeFirst()
            for (i,j) in [(-1,0), (1,0), (0,-1), (0,1)] {
                var adjacentX = element[0] + i
                var adjacentY = element[1] + j
                if currentLevel + 1 == element[2] {
                    currentLevel += 1
                }
                
                if adjacentX == -1  || adjacentX == row || adjacentY == -1 || adjacentY == col {
                    continue
                }
                
                else {
                    if copy[adjacentX][adjacentY] == 1 {
                        copy[adjacentX][adjacentY] = 2
                        
                        queue.append([adjacentX, adjacentY, element[2] + 1])
                        
                        
                    }
                }
            }
        }
        
        if copy.flatMap { $0 }.contains(1) {
            return -1
        }
        
        return currentLevel
    }
}


/*


이중 포문으로 돌아야함

큐에 넣어서

썩은 걸 꺼내자

주변을 썩게 만들자



썩은 것들을 몽땅 큐에 넣어야함 grid[i][j]

그러고나서 디큐를 해서 하나씩 썩게 만들어버리자






*/