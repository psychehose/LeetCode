
public class Solution {
    public string PredictPartyVictory(string senate)
    {

        Queue<String> queue = new Queue<String>();

        // Enqueue
        foreach (var ch in senate)
        {
            queue.Enqueue(ch.ToString());
        }

        while (queue.Count != 0)
        {

            var senator = queue.Dequeue();

            if (senator == "R")
            {
                if (!queue.Contains("D"))
                {
                    return "Radiant";
                }

                var arr = queue.ToArray().ToList();
                arr.RemoveAt(arr.IndexOf("D"));
                queue = new Queue<string>(arr);
                
                queue.Enqueue(senator);
            }
            else
            {
                if (!queue.Contains("R"))
                {
                    return "Dire";
                }

                var arr = queue.ToArray().ToList();
                arr.RemoveAt(arr.IndexOf("R"));
                queue = new Queue<string>(arr);
                
                queue.Enqueue(senator);
            }
        }


        return "";
    }
}