class Solution {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        
        var result = [Int]()
    
        for asteroid in asteroids {
            if result.isEmpty { 
                result.append(asteroid)     
                continue
            }
            
            while true {
                guard let el = result.popLast() else {
                    result.append(asteroid)
                    break
                }
                // el vs asteroid
                
                // 방향이 같은 경우 
                // el 먼저 넣고  asteroid 넣고 break 하기
                
                if el * asteroid > 0 { 
                    result.append(el)
                    result.append(asteroid)
                    break
                }
                
                // 방향이 다른 경우는 case를 따져야 함
                else {
                    
                
                // el이 왼쪽(-) 으로 가고, asteroid (+)으로 가는 경우 -> 충돌 안함
                // el 먼저 넣고, asteroid 넣고 break
                    
                    if el < 0 && asteroid > 0 { 
                        result.append(el)
                        result.append(asteroid)
                        break
                    }
                    
                    // el이 오른쪽(+) 으로 가고, asteroid (-)으로 가는 경우 -> 충돌함
                    // 기존의 것(el)이 더 쎄면 el 넣고 break
                    // 새로운 것(asteroid)이 더 쎄면 asteroid 넣고 continue
                    // 같은 경우 둘다 파괴하고 break

                    else {
                        
                        if abs(el) > abs(asteroid) { 
                            result.append(el)
                            break
                        } else if abs(el) < abs(asteroid) {
                            continue
                        }
                        else {
                            break
                        }
                    }
                    
                }
                
            }
            
            
        }
    
        
        return result
        
    }
}