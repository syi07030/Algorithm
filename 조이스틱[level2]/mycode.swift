import Foundation

//원형 연결리스트?가 아니라 탐욕법 이용해야 하는 문제
func solution(_ name:String) -> Int {
    var answer = 0
    let alpha = ["A","B","C","D","E","F","G","H","I","J",
                 "K","L","M","N","O","P","Q","R","S","T",
                 "U","V","W","X","Y","Z"] //26
    var cursor = 1
    for (index,n) in name.enumerated() {
        if n == "A" { 
            cursor += 1
            continue }
        let i = alpha.firstIndex(of:String(n))!
        if i <= 12 {
            answer += i
        } else {
            answer += (26-i)
        }
        if index < name.count-1 && index > name.count/2 && cursor > 1{
            answer += name.count-index
        } else if index < name.count-1 && String(name[name.index(name.startIndex, offsetBy: index+1)])>"A"{
            answer += cursor
        }
        cursor = 1
        print(answer)
    }
    return answer
}