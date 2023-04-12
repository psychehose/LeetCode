class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        
        if s1.count > s2.count  { return false }
        
        var n = s2.count
        var k = s1.count
        var cnt = 0
        var arr_s1 = Array(s1)
        var arr_s2 = Array(s2)
        var target: [Character: Int] = [:]
        var window: [Character: Int] = [:]
        
        for i in 0 ..< k {
            target.updateValue((target[arr_s1[i]] ?? 0) + 1, forKey: arr_s1[i])
            window.updateValue((window[arr_s2[i]] ?? 0) + 1, forKey: arr_s2[i])
        }
        
        for i in 0 ..< (n-k+1) {
            if target == window {
                return true
            }

            if i != n-k {
                window.updateValue((window[arr_s2[i]] ?? 0) - 1, forKey: arr_s2[i])
                window.updateValue((window[arr_s2[i+k]] ?? 0) + 1, forKey: arr_s2[i+k])
                if (window[arr_s2[i]]) == 0 {
                    window[arr_s2[i]] = nil
                }
            }
        }
        return false
    }
   
}

/*

Window를 설정 s1.count만큼 s2만큼 설정
Dictionary 이용 -> Equatable 이용하기
s1, s2를 charArray로 설정하기
s1을 Dictionary
s2를 s2.count - s1.count 만큼 돌면서 dictionary 비교하기

*/