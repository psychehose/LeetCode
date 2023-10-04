public class TrieNode {
    
    public Dictionary<char, TrieNode> children;
    public bool endOfWord;
    
    public TrieNode() {
        this.children = new Dictionary<char, TrieNode>();
        this.endOfWord = false;
    }
}

public class Trie {
    
    TrieNode root;

    public Trie() {
        this.root = new TrieNode();
    }
    
    public void Insert(string word) {
        
        TrieNode cur = root;
        
        foreach(char c in word) {
            if (!(cur.children.ContainsKey(c))) {
                cur.children.Add(c, new TrieNode());
            }
            cur = cur.children[c];
        }
        cur.endOfWord = true;

        return;
    }
    
    public bool Search(string word) {
        TrieNode cur = root;
        
        foreach(char c in word) {
            if (!(cur.children.ContainsKey(c))) {
                return false;
            }
            cur = cur.children[c];
        }
        return cur.endOfWord;
    }
    
    public bool StartsWith(string prefix) {
        TrieNode cur = root;

        foreach(char c in prefix) {
            if (!(cur.children.ContainsKey(c))) {
                return false;
            }
            cur = cur.children[c];
        }
        return true;
    }
}

/**
 * Your Trie object will be instantiated and called as such:
 * Trie obj = new Trie();
 * obj.Insert(word);
 * bool param_2 = obj.Search(word);
 * bool param_3 = obj.StartsWith(prefix);
 */