class Solution {
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        
        var tri = triangle
        var result: Int = 0
        
        
        while var last = tri.popLast() {

            guard var cur = tri.last else {
                result = last[0]
                break
            }
            
            var newCur: [Int] = []

            for i in 0 ..< cur.count {
                var left = cur[i] + last[i]
                var right = cur[i] + last[i+1]
                var root = min(left, right)
                newCur.append(root)
            }
            tri[tri.count - 1] = newCur   
        }
        
        return result
        
    }
}



// MARK: - pseudo


/*

while


*/




 // MARK: - Notes

/*
f(n)의 최소값

f(1) =  최소값 고르면 됨. 1층이 정상이라면 도달하는 방법 1가지
a

f(2) =  2층이 정상이라면 정상에 도달하는 방법 2가지

 a
b c

b -> a
c -> a

[[2], [-1,2]]

f(2) = 1
minimum path = 2 -1


f(3) = 3층이 정상이라면 정상에 도달하는 방법 4가지

[2], [-1,2] [2,1, -100]
이 경우에는 
2 2 -100

  a
 b c
d e f


d b a
e b a
e c a
f c a

f(4) = 4층이 정상이라면 정상에 도달하는 방법 8가지

[2], [-1, 2], [2, 1, -100], [-1000, 2, -100, 1]

2 2 - 100


   a
  b c
 d e f
g h i j

g d b a
h d b a
h e b a
h e c a
i e b a
i e b c
i f c a
j f c a

f(5) = 16가지

k -> g -> d -> b -> a 

l -> g -> d -> b -> a
l -> h -> d -> b -> a
l -> h -> e -> b -> a
l -> h -> e -> c -> a

n -> h -> d -> b -> a
n -> h -> e -> b -> a
n -> h -> e -> c -> a
n -> i -> e -> b -> a
n -> i -> e -> c -> a
n -> i -> f -> c -> a

m -> i -> e -> b -> a
m -> i -> e -> c -> a
m -> i -> f -> c -> a
m -> j -> f -> c -> a

o -> j -> f -> c -> a


    a
   b c
  d e f
 g h i j
k l n m o


kg lg lh nh ni mi mj

1 + 4 + 6 + 4 + 1 = 16

f(n) = 2^(n-1) 가지

     a
    b c
   d e f
  g h i j
 k l n m o
p q r s t u




   2
  3 4
 6 5 7
4 1 8 3


(10 7), (6, 13), (15, 10)

   2
  3 4
 7 6 10


10 9 10 14


 2
9 10
*/