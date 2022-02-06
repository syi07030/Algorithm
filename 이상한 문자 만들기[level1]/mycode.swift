func solution(_ s:String) -> String {
    var index: Int = 0
    var answer: String = ""
    for str in s{
        if(str==" "){
            index = 0
            answer+=" " //그냥 str을 더할 경우 에러 발생
            continue
        }
        else if(index%2==0){
            answer+=str.uppercased()
        }
        else{
            answer+=str.lowercased()
        }
        index+=1
    }
    return answer
}


/* 다른 사람 풀이
import Foundation
func solution(_ s:String) -> String {
    let a = s.components(separatedBy: " ").map { $0.enumerated().map { $0.offset % 2 == 0 ? $0.element.uppercased() : $0.element.lowercased() } }
    return a.map{ $0.map { $0 }.joined() }.joined(separator: " ")
}
*/