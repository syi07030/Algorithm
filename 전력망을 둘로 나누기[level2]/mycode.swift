import Foundation
//n =6, wires = [[1, 4], [6, 3], [2, 5], [5, 1], [5, 3]], answer = 2
func solution(_ n:Int, _ wires:[[Int]]) -> Int {
    var answer = wires.count - 1
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

        //print(a,b,other)
        if abs(a.count-b.count) < answer{
            answer = abs(a.count-b.count)
            print(answer)
        }
    }
    return answer
}