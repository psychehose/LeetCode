class Solution {
    func equalPairs(_ grid: [[Int]]) -> Int {
        var n = grid.count
        var flat = grid.flatMap { $0 }
        var transpose = [[Int]:Int]()
        var res = 0
        var length = flat.count

        for i in (0..<n).reversed() {
            var arr = [Int]()

            for t in stride(from: (n-i-1), to: length - i, by: n) {
                arr.append(flat[t])
            }
            
            if transpose[arr] == nil {
                transpose[arr] = 1
            } else {
                transpose[arr]! += 1
            }
        }

        for row in grid {
            if transpose.keys.contains(row) {
                res += transpose[row] ?? 0
            }
        }
        
        return res
    }
}

// 행 중심으로 살펴본다면 ->하나의 행에 3개의 열이 대응
// 매트릭스를 대치를 해서 루프를 돌게 하기.

// [3, 2, 1], [1, 7, 6], [2, 7, 7]

// 0,3,6 -> 끝 = 7
// 1,4,7 -> 끝 = 8
// 2,5,8 = -> 끝 = 9
// 
// 3 1 2 2
// 1 4 4 5
// 2 4 2 2
// 2 4 2 2

// 3 1 2 2
// 1 4 4 4
// 2 4 2 2
// 2 5 2 2
