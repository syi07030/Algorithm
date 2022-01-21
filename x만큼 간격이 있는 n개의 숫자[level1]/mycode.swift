func solution(_ x:Int, _ n:Int) -> [Int64] {
    var answer: [Int64]=[]
    for i in 1...n{
        answer.append(Int64(x*i))
    }
//    for number in stride(from:x,to:x*n,by:n){
//        answer.append(number)
//    }
    return answer
}