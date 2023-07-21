public class Solution {
    public int[] AsteroidCollision(int[] asteroids) {
        List<int> result = new List<int>();

        foreach (int asteroid in asteroids) {
            if (result.Count == 0) {
                result.Add(asteroid);
                continue;
            }

            while (true) { 
                if (result.Count == 0) {
                    result.Add(asteroid);
                    break;
                } else {
                    int el = result[result.Count - 1];

                    
                    if (el * asteroid > 0) {
                        // same direction
                        result.Add(asteroid);
                        break;
                    } else {
                        // different direction but casefy
                        
                        if (el < 0 && asteroid > 0) {
                            // Case 1. el이 왼쪽, 행성 오른쪽 -> 충돌 가능성 없음 (break)
                            result.Add(asteroid);
                            break;
                        } else {

                            // Case 2. el이 오른쪽, 행성 왼쪽 -> 충돌 가능성 casefy

                            if (Math.Abs(el) > Math.Abs(asteroid)) {
                                // el이 더 큰 경우
                                break;
                            } else if (Math.Abs(el) < Math.Abs(asteroid)) {
                                // 행성이 더 큰 경우
                                result.RemoveAt(result.Count - 1);
                                continue;
                            } else {
                                // 똑같은 경우
                                result.RemoveAt(result.Count - 1);
                                break;   
                            }
                        }

                    }

                }
            }
        }
        
        return result.ToArray();
    }
}

