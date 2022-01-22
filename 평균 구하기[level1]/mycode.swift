func solution(_ arr:[Int]) -> Double {
    var sum:Int = arr.reduce(0,+)
    var count:Int = arr.count
    var answer: Double = Double(sum)/Double(count)
    return answer
}

//return Double(arr.reduce(0,+))/Double(arr.count) 그냥 이렇게 한 줄로 가능