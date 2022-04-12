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