func solution(_ arr:[Int]) -> [Int] { //arr is a let constant
    var answer: [Int]=arr //swift에서 배열은 구조체 형태
    //let minIndex: Int = arr.firstIndex(of:arr.min())
    let min = arr.min()
    if (arr.count==1){
        return [-1]
    }
    answer.removeAll(where:{$0 == min}) //클로저 개념
    //return answer.removeAll(where:{$0 == min}) 하면 에러났는데,,
    return answer
}