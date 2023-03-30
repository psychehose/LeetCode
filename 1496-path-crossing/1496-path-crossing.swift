class Solution {


    func isPathCrossing(_ path: String) -> Bool {



        enum Direction: String, CaseIterable {
            case N
            case S
            case E
            case W

            var val: (CGFloat, CGFloat) {
                switch self {
                case .N:
                    return (0, 1)

                case .S:
                    return (0, -1)

                case .E:
                    return (1, 0)

                case .W:
                    return (-1, 0)
                }
            }
        }


        var arr: [CGPoint] = [CGPoint(x: 0, y: 0)]
        var cur: CGPoint = CGPoint(x: 0, y: 0)



        for c in path {
            let direction = Direction(rawValue: String(c))!

            let nextPoint = CGPoint(x: cur.x + direction.val.0, y: cur.y + direction.val.1)


            if arr.contains(nextPoint) {
                return true
            }

            arr.append(nextPoint)
            cur = nextPoint
        }

        return false
    }
}