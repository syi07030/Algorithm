import Foundation

func solution(_ relation:[[String]]) -> Int {
    var answer = 0
    var candidate = [String]()
    let col = relation[0].count
    let row = relation.count
    for c in stride(from:0,to:col,by:1){
        for r in stride(from:0,to:row,by:1){
            if candidate.contains(relation[r][c]){
                candidate = [String]()
                break
            }else{
                candidate += [relation[r][c]]
            }
        }
        if candidate.count>0 {
            answer += 1
            candidate = [String]()
        }
    }

    return answer
}