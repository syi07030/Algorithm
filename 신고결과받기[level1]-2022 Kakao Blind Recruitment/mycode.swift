import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var answer = [Int](repeating:0, count:id_list.count)
    
    let report_set = Set(report)
    let report_arr = Array(report_set) 
    //중복 제거 -> 한 유저가 같은 유저를 여러 번 신고한 경우 신고 횟수는 1번
  
    let reportUser = report_arr.map { String($0[..<$0.firstIndex(of:" ")!]) }
    var reportedUser = report_arr.map { String($0[$0.firstIndex(of:" ")!...]) }
    var new_reportUser = [String]()
    
    let mappedReportedUser = reportedUser.map { ($0, 1) }
    let counts = Dictionary(mappedReportedUser, uniquingKeysWith: +)
    
    for (index, str) in reportedUser.enumerated() {
        if counts[str]! >= k {
            new_reportUser.append(reportUser[index])
        }
    }
    
    for i in new_reportUser {
        answer[id_list.firstIndex(of: i)!] += 1
    }
    
    return answer
}

/*다른 사람 풀이
import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var reported: [String: Int] = [:]
    var user: [String: [String]] = [:]

    for r in Set(report) {
        let splited = r.split(separator: " ").map { String($0) }
        user[splited[0]] = (user[splited[0]] ?? []) + [splited[1]]
        reported[splited[1]] = (reported[splited[1]] ?? 0) + 1
    }

    return id_list.map { id in
        return (user[id] ?? []).reduce(0) {
            $0 + ((reported[$1] ?? 0) >= k ? 1 : 0)
        }
    }
}
*/