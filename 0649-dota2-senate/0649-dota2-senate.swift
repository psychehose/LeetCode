class Solution {
    func predictPartyVictory(_ senate: String) -> String {
        var arr_senate = Array(senate)
        
        var d: [Character: String] = ["R":"Radiant", "D": "Dire"]
        
        var victor: String = ""
        
        
        func whoIsVictor(_ arr: [Character]) -> String? {
            
            if arr.contains("D") && arr.contains("R") {
                return nil
            }
            
            else if arr.contains("D") {
                return "Dire"
            }
            else {
                return "Radiant"
            }
        }
        
        while !arr_senate.isEmpty {

            if let who = whoIsVictor(arr_senate) {
                victor = who
                break
            }
            
            var senator = arr_senate.removeFirst()
            
            if senator == "R" {
                
                // R인 경우 D 찾기 만약 D가 없으면 그냥 이기면 됨
                
                if !arr_senate.contains("D") {
                    return "Radiant"
                }
                var target_index = arr_senate.firstIndex(of:"D")!
                
                arr_senate.remove(at: target_index)
                arr_senate.append(senator)
                
            } else {
                // D인 경우 R 찾기
                if !arr_senate.contains("R") {
                    return "Dire"
                }

                var target_index = arr_senate.firstIndex(of:"R")!
                arr_senate.remove(at: target_index)
                arr_senate.append(senator)
                
            }
            
        }
        
        
        return victor
        
    }
}


// MARK: 두 권리 중 하나

// 묵살시키기 - 지굼부터 다음 모든 라운드까지

// 투표할 권리를 가지고 있는 녀석을 찾은 의원이 만약 같은 의원이라면, 승리할 수 있음?


// 기본적으로 앞에 있는 녀석을 죽여야함. 즉 remove를 시켜야함.

// 승리 조건은 배열에 한 글자만 남아있는 경우

// R을 발견했을 때 루프를 돌려서 D를 찾고 remove를 해. 그리고 R을 어펜드하자
// D를 발견했을 때 루프를 돌려서 R을 찾고 remove를 해 그리고 D를 어펜드하자
// 무한루프를 돌텐데, 한 글자만 배열에 남아있으면 게임 이기는 것.


