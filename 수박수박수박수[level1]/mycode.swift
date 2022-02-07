func solution(_ n:Int) -> String {
    let cnt: Int = n/2
    var answer = String(repeating:"수박", count:cnt)
    if n%2==1{
        answer+="수"
    }
    return answer
}