import Foundation

func solution(_ word:String) -> Int {
    var answer = 0
    let alpha = ["A", "E", "I", "O", "U"]
    let div = [1+5+5*5+5*5*5+5*5*5*5, 1+5+5*5+5*5*5, 1+5+5*5, 1+5, 1]
    let w = word.map {String($0)}
    for i in stride(from:0, to: w.count, by:1) {
        //print(w[i])
        answer += alpha.firstIndex(of: w[i])! * div[i]
        answer += 1
        //print(answer)
    }
    return answer
}