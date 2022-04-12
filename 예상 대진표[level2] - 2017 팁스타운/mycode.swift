import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var answer = 0
    var max = [a,b].max()!
    var min = [a,b].min()!

    while max > min {
        answer += 1
        max = Int(ceil(Double(max)/Double(2)))
        min = Int(ceil(Double(min)/Double(2)))
    }

    return answer
}


/*
처음에 작성한 코드(기준점을 두고 그 기준점과 다른 곳에 위치하는지 같은 곳에 위치하는지로 판단, 시간초과 문제 + 세 문제 실패)

import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var answer = 0
    let max = [a,b].max()!
    let min = [a,b].min()!
    var range = n
    var c = 0 //기준
    while true {
        var new_range = range/2 + c
        if min <= new_range && max > new_range {
            while new_range > 1 {
                new_range /= 2
                answer += 1 
            }
            answer += 1
            break
        } 

        range = new_range
        if min > range { c = range }
    }

    return answer
}
*/

/*
다른 사람 풀이 참고한 코드(java)

class Solution
{
    public int solution(int n, int a, int b) {
        int matchCount = 0;
        while(a!=b) {
            matchCount++;
            if(a%2==1) {a+=1;}
            if(b%2==1) {b+=1;}
            a/=2;
            b/=2;
        }
        return matchCount;
    }
}
*/