func solution(_ s:String) -> Int {
    if let answer = Int(s){
        return answer
    }
    return 0 //nil 인 경우도 꼭 해줘야 에러가 안 난다
}

//return Int(s)! 그냥 이렇게 옵셔널 값 강제로 빼는 것도 가능