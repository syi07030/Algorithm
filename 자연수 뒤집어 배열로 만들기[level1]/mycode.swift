func solution(_ n:Int64) -> [Int] {
    let str = String(n).reversed() //string에서 reversed()해야, 배열에서는 ReversedCollection<Array<Element>> 타입 반환
    var arr = Array(str) //각 요소 타입은 character
    var answer = [Int]()
    for i in arr{
        answer+=[Int(String(i))]
    }
    return answer
}