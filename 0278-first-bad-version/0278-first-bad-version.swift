/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var low = 1
        var high = n
        var bad = 1
        
        while low <= high {
            var mid = low + (high - low) / 2
            
            if isBadVersion(mid) {
                bad = mid
                high = mid - 1
            }
            else {
                low = mid + 1
            }
        }
        
        return bad
        
    }
}