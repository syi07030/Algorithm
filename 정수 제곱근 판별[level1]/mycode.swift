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