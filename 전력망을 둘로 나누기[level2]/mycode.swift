// test case 2,3,5,8,9,10,11,12,13 실패,,왜지

import Foundation

func solution(_ n:Int, _ wires:[[Int]]) -> Int {
    var answer = wires.count
    for i in stride(from:0, to:wires.count, by:1) {
        var a = [Int]()
        var b = [Int]()
        var other = [Int]()
        
        a += [wires[i][0]]
        b += [wires[i][1]]
        
        for w in wires {
            if wires[i] == w { continue }
            if a.contains(w[0]) {
                a += [w[1]]
            } else if a.contains(w[1]) {
                a += [w[0]]
            } else if b.contains(w[0]) {
                b += [w[1]]
            } else if b.contains(w[1]) {
                b += [w[0]]
            } else {
                other += [w[0]]
                other += [w[1]]
            }
        }
        
        other = Array(Set(other))
        if other.filter{a.contains($0)}.count > 0 {
            a += other
            a = Array(Set(a))
        } else {
            b += other
            b = Array(Set(b))
        }

        var value = 0
        if a.filter{b.contains($0)}.count > 0 {
            value = n
        } else {
            value = abs(a.count-b.count)
        }
        
        print(a,b,other)
        if value < answer{
            answer = value
            print(answer)
        }
    }
    return answer
}