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