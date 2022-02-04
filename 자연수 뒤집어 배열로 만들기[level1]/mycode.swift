//이렇게 하면 answer array에 int? -> int 에러 발생, 옵셔널로 애초에 정의해서 하려고 했으나 반환 타입과 맞지 않아서 또 에러
func solution(_ n:Int64) -> [Int] {
    let str = String(n).reversed() //string에서 reversed()해야, 배열에서는 ReversedCollection<Array<Element>> 타입 반환
    var arr = Array(str) //각 요소 타입은 character
    var answer = [Int]()
    for i in arr{
        //answer+=[Int(String(i))]
        answer+=[i.wholeNumberValue]
    }
    return answer
}

//아래와 같이 새로운 변수를 정의하고 조건문을 넣어서 해결(참조 사이트:https://stackoverflow.com/questions/36781776/convert-character-to-integer-in-swift/50541669)
func solution(_ n:Int64) -> [Int] {
    let str = String(n).reversed() //string에서 reversed()해야, 배열에서는 ReversedCollection<Array<Element>> 타입 반환
    var arr = Array(str) //각 요소 타입은 character
    var answer = [Int]()
    for i in arr{
        if let value = i.wholeNumberValue{
            answer+=[value]
        }
        else{
            print("this is not number")
        }
    }
    return answer
}


/*다른 사람 풀이
func solution(_ n:Int64) -> [Int] {
    return  "\(n)".compactMap { $0.hexDigitValue }.reversed()
}

또는 그냥 받은 숫자를 일의 자리부터 계산해서 배열에 append 시키는 방법
*/