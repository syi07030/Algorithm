//import Foundation
func solution(_ n:Int) -> Int {
    var answer: Int = 0
    for i in stride(from:1, to:n+1 ,by:1){
        if n%i==0 {
            answer=answer+i
        }
    }
    return answer
}

/*다른 사람풀이
func solution(_ n:Int) -> Int {   
    guard n != 0 else { //guard:반드시 가져야할 조건 판별, if의 subset느낌
        return 0
    }
    return Array(1...n).filter{n % $0 == 0}.reduce(0, +)
}
*/