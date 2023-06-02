class Solution {
    func closeStrings(_ word1: String, _ word2: String) -> Bool {
        
        if word1.count != word2.count {
            return false
        }
        
        var charSet1 = Array(word1)
        var charSet2 = Array(word2)
        
        var set1Hash: [Character: Int] = [:]
        var set2Hash: [Character: Int] = [:]
        
        for i in 0 ..< charSet1.count {
            set1Hash[charSet1[i]] = (set1Hash[charSet1[i]] ?? 0) + 1
            set2Hash[charSet2[i]] = (set2Hash[charSet2[i]] ?? 0) + 1
        }
        
        var sum1 = Array(set1Hash.values).sorted()
        var sum2 = Array(set2Hash.values).sorted()
        
        var keys1 = set1Hash.keys
        var keys2 = set2Hash.keys
        
        
        // print("Sum1 == ", sum1)
        // print("Sum2 == ", sum2)
        
        // print("Key1 == ", keys1)
        // print("Key2 == ", keys2)
        
        return sum1 == sum2 && keys1 == keys2
        
    }
}