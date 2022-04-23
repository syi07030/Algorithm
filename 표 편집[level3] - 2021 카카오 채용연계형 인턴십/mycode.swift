import Foundation

func solution(_ n:Int, _ k:Int, _ cmd:[String]) -> String {
    var answer = [String](repeating:"O",count:n)
    var current = k //현재 위치한 행
    var remove = [Int]() //삭제한 행 스택

    for c in cmd {
        if c.first! == "D" {
            let num = Int(c.components(separatedBy:" ")[1])!
            //print(remove)
            let r = remove.filter{$0>current}.filter{$0<=current+num}.count
            //print("down\(r)")
            current = current+num+r

        } else if c.first! == "U"{
            let num = Int(c.components(separatedBy:" ")[1])!
            //print(current,remove)
            let r = remove.filter{$0<current}.filter{$0>=current-num}.count
            //print("up \(r)")
            current = current - num - r
        } else if c == "C" {
            answer[current] = "X"
            remove.append(current)
            if current < n-1{ current += 1 }
            else { current -= 1 }
        } else if c == "Z" {
            answer[remove.removeLast()] = "O"
        }
    }
    return answer.joined(separator:"")
}import Foundation

func solution(_ n:Int, _ k:Int, _ cmd:[String]) -> String {
    return ""
}