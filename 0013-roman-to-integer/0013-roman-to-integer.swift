class Solution {
    func romanToInt(_ s: String) -> Int {

        var result: Int = 0
        var i: Int = 0
        let roman: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]


        while i < s.count {

            if i == s.count - 1 {
                result += roman[s[s.index(s.startIndex, offsetBy: i)]]!
                i += 1
                continue
            }

            let cur = s[s.index(s.startIndex, offsetBy: i)]

            guard cur == "I" || cur == "X" || cur == "C" else {
                result += roman[cur]!
                i += 1
                continue
            }


            if cur == "I" {
                let next = s[s.index(s.startIndex, offsetBy: i+1)]

                if next == "V" {
                    result += 4
                    i += 2
                } else if next == "X" {
                    result += 9
                    i += 2
                } else {
                    result += 1
                    i += 1
                }

                continue
            }

            else if cur == "X" {
                let next = s[s.index(s.startIndex, offsetBy: i+1)]

                if next == "L" {
                    result += 40
                    i += 2
                } else if next == "C" {
                    result += 90
                    i += 2
                } else {
                    result += 10
                    i += 1
                }

                continue

            } else {
                let next = s[s.index(s.startIndex, offsetBy: i+1)]

                if next == "D" {
                    result += 400
                    i += 2
                } else if next == "M" {
                    result += 900
                    i += 2
                } else {
                    result += 100
                    i += 1
                }
                continue
            }



        }

        return result

    }
}