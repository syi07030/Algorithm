func solution(_ n:Int, _ m:Int) -> [Int] {
    var answer=[Int]()
    var div: Int = 1
    var mul: Int = 1
    for i in stride(from:2,to:min(n,m)+1,by:1){
        if (n%i==0 && m%i==0){
            div = i
        }
    }
    mul = n*m/div
    answer+=[div]
    answer+=[mul]
    return answer
}

//mod