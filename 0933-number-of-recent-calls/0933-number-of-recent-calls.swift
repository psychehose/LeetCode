
class RecentCounter {

    var requests: [Int] = []

    init() {
        
    }
    
    func ping(_ t: Int) -> Int {
        
        requests.append(t)
        
        var range = (t-3000 ... t)
        
        return requests.filter { range.contains($0) }.count
    }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * let obj = RecentCounter()
 * let ret_1: Int = obj.ping(t)
 */