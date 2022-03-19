import Foundation

func solution(_ new_id:String) -> String {
    //1step
    var answer = new_id.lowercased()
    
    //2step
    let pattern = "^[0-9a-z-_.]*$"
    do {
        let regex = try NSRegularExpression(pattern: pattern, options: [])
        let result = regex.matches(in: answer, options: [], range: NSRange(location: 0, length: answer.count))
    
        let rexStrings = result.map { (element) -> String in
            let range = Range(element.range, in: answer)!
            return String(answer[range])
        }
        print(rexStrings)
    } catch let error {
        print(error.localizedDescription)
    }
    
    /*
    let pattern = "^[0-9a-z-_.]*$"
    let regex = try? NSRegularExpression(pattern: pattern)
    
    if let arr = regex?.matches(in: answer, options: [], range: NSRange(location:0,length:answer.count)) {
        let rexString = arr.map { (element) -> String in
            let range = Range(element.range, in: answer)!
            return String(answer[range])
        }
        print(rexString)
    }else{
        print("error")
    }
    */
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
        answer = String(answer[..<answer.index(answer.startIndex, offsetBy:15)])
    }
    answer=answer.trimmingCharacters(in:["."])
    
    
    //7step
    if answer.count <= 2 {
        let last = String(answer[answer.endIndex])
        while(answer.count<3){
            answer += last
        }
    }
    
    return answer
}