import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var answer = [Int](repeating:0, count:id_list.count)
    
    let report_set = Set(report)
    let report_arr = Array(report_set) 
    //중복 제거 -> 한 유저가 같은 유저를 여러 번 신고한 경우 신고 횟수는 1번
    
    var reportUser = [String]() //신고한 유저
    var reportedUser = [String]() //신고당한 유저
    
    for str in report_arr {
        let findIdx:String.Index = str.firstIndex(of: " ")!
        reportUser.append(str.substring(to:findIdx))
        reportedUser.append(str.substring(from:findIdx))
    }
    //warning: 'substring(to:)' is deprecated: Please use String slicing subscript with a 'partial range upto' operator.
    
    let mappedReportedUser = reportedUser.map { ($0, 1) }
    let counts = Dictionary(mappedReportedUser, uniquingKeysWith: +)
        
    var stoppedUser = [String]()
    
    for i in counts {
        if i.value >= k {
            stoppedUser.append(i.key)
        }
    }
        
    for i in stoppedUser {
        for (index,str) in reportedUser.enumerated() {
            if i == str {
                answer[id_list.firstIndex(of: reportUser[index])!] += 1
            }
        }
    }
    
    return answer
}