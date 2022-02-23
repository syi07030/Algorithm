func solution(_ s:String) -> Bool {
    var answer = false
    if s.count == 4 || s.count == 6 {
        if let onlyInt = Int(s) { //옵셔널 바인딩 사용
            answer = true
        }
    }
    return answer
}

// 정규식 사용해서 풀이도 가능