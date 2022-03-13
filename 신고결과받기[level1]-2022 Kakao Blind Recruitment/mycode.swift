import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var answer = [Int](repeating:0, count:id_list.count)
    
    let report_set = Set(report)
    let report_arr = Array(report_set) 
    //중복 제거 -> 한 유저가 같은 유저를 여러 번 신고한 경우 신고 횟수는 1번
  
    let reportUser = report_arr.map { String($0[..<$0.firstIndex(of:" ")!]) }
    let reportedUser = report_arr.map { String($0[$0.firstIndex(of:" ")!...]) }
    
    let mappedReportedUser = reportedUser.map { ($0, 1) }
    let counts = Dictionary(mappedReportedUser, uniquingKeysWith: +)
    
    for (key,value) in counts {
        if value >= k {
            for (index,str) in reportedUser.enumerated() {
                if key == str {
                    answer[id_list.firstIndex(of: reportUser[index])!] += 1
                }
            }
        }
    }
    
    return answer
}