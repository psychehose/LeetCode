class Solution {
    func reverseOnlyLetters(_ s: String) -> String {

        var nonAlphabet: [Int: String.Element] = [:]

        let filtered = s.enumerated().filter { index, c  -> Bool in

            if (65 <= c.asciiValue! && c.asciiValue! <= 90) || (97 <= c.asciiValue! && c.asciiValue! <= 122) {
                return true
            }

            nonAlphabet[index] = c
            return false
        }
            .map { $0.element }


        var arr = Array(filtered.reversed())
        let sortedKeys = Array(nonAlphabet.keys).sorted(by: <)


        sortedKeys.forEach { key in
            arr.insert(nonAlphabet[key]!, at: key)
        }

        let res = String(arr)

        return res
    }
}