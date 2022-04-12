import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var answer = 0
    let new_skill_trees = skill_trees.map{$0.replacingOccurrences(of:"[^\(skill)]", with: "", options:.regularExpression)}
    print(new_skill_trees)

    var possible_skill = [String]()
    var p = ""
    for s in skill {
        p += String(s)
        possible_skill.append(p)
    }    
    print(possible_skill)

    for i in new_skill_trees {
        if possible_skill.contains(i) || i == "" { //i == "" 이 경우도 고려하기!
            print(i)
            answer += 1
        }
    }
    return answer
}

/*
다른사람 풀이

import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {

    func available(_ s: String, _ t: String) -> Bool {
        let alza = t.filter { s.contains($0) }
        return s.starts(with: alza)
    }

    return skill_trees.map { available(skill, $0) }.filter { $0 }.count
}

*/