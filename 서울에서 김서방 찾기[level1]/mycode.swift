func solution(_ seoul:[String]) -> String {
    var answer: Int = 0
    answer = seoul.firstIndex(of:"Kim")! //optional int 형태 반환하기 때문에 unwrapping 필요
    return "김서방은 \(answer)에 있다"
}