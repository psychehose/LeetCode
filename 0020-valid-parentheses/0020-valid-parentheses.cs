public class Solution {
    public bool IsValid(string s) {
        
        List<char> stack = new List<char>();
        
        
        foreach (char c in s) {
            if(c == '(' || c == '{' || c == '[') {
                // open parenthese
                stack.Add(c);
            } else {
                
                if(stack.Count() == 0) {
                    return false;
                }
                
                char last = stack[stack.Count() -1];
                
                if (c == ')') {
                    if(last != '(') { 
                        return false;
                    } else {
                        stack.RemoveAt(stack.Count()-1);
                    }
                    
                    
                } else if ( c == '}') {
                    if(last != '{') { 
                        return false;
                    } else {
                        stack.RemoveAt(stack.Count()-1);
                    }
                } else {
                    if(last != '[') { 
                        return false;
                    } else {
                        stack.RemoveAt(stack.Count()-1);
                    }
                }
                
            }
        }
        
        
        return stack.Count() == 0 ? true : false;
        
        
    }
}