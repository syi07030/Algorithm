//1차
import Foundation
func solution(_ n:Int64) -> Int64 {
    let num: Double = Double(n)
    //let sqrt: Double = sqrt(num)
    if(sqrt(num) == round(sqrt(num))){
        return Int64(sqrt(num)+1)*Int64(sqrt(num)+1)
    }
    else{
        return -1
    }
}

//2차
import Foundation
func solution(_ n:Int64) -> Int64 {
    let num: Double = Double(n)
    let s = Int64(sqrt(num))
    if(Double(s) == sqrt(num)){
        return (s+1)*(s+1)
    }
    else{
        return -1
    }
}

/* 다른 사람 풀이
import Foundation
func solution(_ n:Int64) -> Int64 {
    let t = Int64(sqrt(Double(n)))
    return t * t == n ? (t+1)*(t+1) : -1 //이런식으로 판별도 가능!
}
*/