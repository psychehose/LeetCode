public class Solution {
    public string DecodeString(string s)
    {
        List<char> result = new List<char>();

        List<char> tempNumber = new List<char>();

        List<int> numberStack = new List<int>();

        List<char> characterStack = new List<char>();


        foreach (var ch in s)
        {
            if (ch >= 97 && ch <= 122 && characterStack.Count == 0)
            {
                result.Add(ch);
                continue;
            }

            if (ch >= 48 && ch <= 57)
            {
                tempNumber.Add(ch);
            } else if (ch == ']')
            {
                List<char> temp = new List<char>();

                while (characterStack.Count > 0)
                {
                    var cur = characterStack.Count - 1;
                    var popped = characterStack[cur];
                    characterStack.RemoveAt(cur);
                    
                    if (popped == '[')
                    {
                        var last = numberStack.Count - 1;
                        var mulCount = numberStack[last];
                        numberStack.RemoveAt(last);
                        temp.Reverse();

                        if (characterStack.Count == 0)
                        {
                            for (int i = 0; i < mulCount; i++)
                            {
                                result.AddRange(temp);
                            }
                        }
                        else
                        {
                            for (int i = 0; i < mulCount; i++)
                            {
                                characterStack.AddRange(temp);
                            }
                        }
                        break;
                    }
                    temp.Add(popped);
                }
            }
            else
            {
                if (ch == '[')
                {
                    var convertString = new string(tempNumber.ToArray());
                    // convertString.
                    int val = int.Parse(convertString);
                    numberStack.Add(val);

                    tempNumber.RemoveRange(0, tempNumber.Count);
                }
                characterStack.Add(ch);
            }
        }
        return new string(result.ToArray());
    }
}