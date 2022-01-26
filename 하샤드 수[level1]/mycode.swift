import Foundation
func solution(_ x:Int) -> Bool { //인자로 들어온 값은 let?
    var answer: Bool = false
    var sum: Int = 0
    var number:Int = x
    for i in stride(from:4,to:0,by:-1){ //이 부분 헷갈리지 말기!
        sum+=number/Int(pow(10,i)) //pow error 
        number=x%Int(pow(10,i)) //pow는 double을 인자로 받고 double을 반환하는데 %는 int형끼리만 연산 가능
    }
    if(x%sum==0){ //조건문에서 != 이거를 쓰면 왜 계속 에러가 나지?
        answer=true
    }
    return answer
}