class Solution {
    func decodeString(_ s: String) -> String {
        
        
        var arr = Array(s)
        
        var numberStack: [Int] = []
        var characterStack: [Character] = []

        var result: [Character] = []
        var temp_number: [Character] = []
        
        // 50 ~ 57 // 숫자
        // 97, 122
        
        for ch in arr {
            
            if ch.asciiValue! >= 97 && ch.asciiValue! <= 122 && characterStack.isEmpty {
                result.append(ch)
                continue
            }
            
            if ch.asciiValue! >= 48 && ch.asciiValue! <= 57 {
                temp_number.append(ch)
                continue
            } else if ch == "]" {
                // [를 찾고 앞 
                
                var temp: [Character] = []
                
                while let popped = characterStack.popLast() {
                    if popped == "[" {
                        
                        let mul_count = numberStack.removeLast()
                        temp.reverse()

                        if characterStack.isEmpty {
                            
                            for _ in 0 ..< mul_count {
                                result.append(contentsOf: temp)
                            }
                            
                            
                        } else {
                            for _ in 0 ..< mul_count {
                                characterStack.append(contentsOf: temp)
                            }
                        }
                        break
                    }
                    temp.append(popped)
                }
            } else {
                if ch == "[" {
                    numberStack.append(Int(String(temp_number))!)
                    temp_number.removeAll()
                }

                characterStack.append(ch)
            }
        }
        
        return String(result)
        
        
    }
}


// number를 만나면 넘버스택에 넣는다.
// 나머지는 무조건 ] 를 제외한 나머지는 character stack에 넣는다.
// ]를 만나면 맨마지막 number stack 팝을하고 [ 앞에까지 있는 문자를 찾아서 팝을한다.
// 근데 characterStack empty가 아니면 characterStack에 넣어준다.

// result에 appending한다.

// 만약 문자이면서, characterStack이 비었으면 그냥 append 한다.