import Foundation

func solution(_ n:Int) -> Int {
    let trit = String(n, radix:3)
    let reverse_trit = String(trit.reversed())
    let answer = Int(reverse_trit,radix:3)!
    return answer
}