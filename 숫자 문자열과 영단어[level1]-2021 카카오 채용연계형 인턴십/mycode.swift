import Foundation

func solution(_ s:String) -> Int {
    var answer = s
    let english = ["zero","one","two","three","four","five","six","seven","eight","nine"]

    for i in english{ //좀 더 시간복잡도 줄일 수 있지 않나
        if answer.contains(i){
            answer = answer.replacingOccurrences(of:i ,with:String(english.index(of:i)!))
        }
    }


    return Int(answer)!
}

/*
var answer = s.replacingOccurrences(of: "zero", with: "0")
            .replacingOccurrences(of: "one", with: "1")
            .replacingOccurrences(of: "two", with: "2")
            .replacingOccurrences(of: "three", with: "3")
            .replacingOccurrences(of: "four", with: "4")
            .replacingOccurrences(of: "five", with: "5")
            .replacingOccurrences(of: "six", with: "6")
            .replacingOccurrences(of: "seven", with: "7")
            .replacingOccurrences(of: "eight", with: "8")
            .replacingOccurrences(of: "nine", with: "9")
*/