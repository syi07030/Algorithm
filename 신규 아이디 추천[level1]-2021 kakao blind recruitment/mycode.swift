import Foundation

func solution(_ new_id:String) -> String {
    //1step
    var answer = new_id.lowercased()
    
    //2step
    let pattern = "^[0-9a-z\\-\\_\\.]*$"
    let regex = try? NSRegularExpression(pattern: pattern)
    
    if let arr = regex?.matches(in: answer, options: [], range: NSRange(location:0,length:answer.count)) {
        answer = arr.joined(separator: "")
    }else{
        print("error")
    }
    
    //3step
    answer = answer.replacingOccurrences(of:".." , with: ".")
    
    //4step
    answer=answer.trimmingCharacters(in:["."])
    
    //5step
    if answer.count == 0 {
        answer = "a"
    }
    
    //6step
    if answer.count >= 16 {
        answer = String(answer[..<answer.index(answer.startIndex, offsetBy:16)])
    }
    
    
    //7step
    if answer.count <= 2 {
        answer = String(repeating: answer, count: 3)
    }
    
    return answer
}