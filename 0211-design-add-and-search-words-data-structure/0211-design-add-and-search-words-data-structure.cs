public class TrieNode {
    
    public Dictionary<char, TrieNode> children = new Dictionary<char, TrieNode>();
    public bool endOfWord = false;
    
    public TrieNode() { }
    
}


public class WordDictionary {
    
    public TrieNode root;
    
    public WordDictionary() {
        this.root = new TrieNode();
    }
    
    public void AddWord(string word) {

        TrieNode cur = root;
        foreach(char c in word) {
            if (!(cur.children.ContainsKey(c))) {
                cur.children.Add(c, new TrieNode());
            }
            cur = cur.children[c];
        }
        cur.endOfWord = true;
        
    }
    
    public bool Search(string word) {

        bool dfs(int depth, TrieNode root) {
            TrieNode cur = root;
        
        
            for (int i = depth; i < word.Length; i++) {
                if (word[i] == '.') {

                    foreach (TrieNode child in cur.children.Values) {
                        if (dfs(i+1, child)) {
                            return true;
                        }
                    }
                    return false;
                } else {
                    if (!(cur.children.ContainsKey(word[i]))) {
                        return false;
                    }
                    cur = cur.children[word[i]];
                }
            }
            
            return cur.endOfWord;
        }
        
        
        
        return dfs(0, this.root);
    }
}

/**
 * Your WordDictionary object will be instantiated and called as such:
 * WordDictionary obj = new WordDictionary();
 * obj.AddWord(word);
 * bool param_2 = obj.Search(word);
 */