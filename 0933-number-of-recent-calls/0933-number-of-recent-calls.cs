public class RecentCounter {
    
    List<int> requests = new List<int>();
    
    public RecentCounter() {

    }
    
    public int Ping(int t) {
        requests.Add(t);
        
        var start = t - 3000;
        
        return requests.Where(r => r >= start && r <= t).ToList().Count;
    }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * RecentCounter obj = new RecentCounter();
 * int param_1 = obj.Ping(t);
 */