/*import Foundation
func solution(_ x:Int) -> Bool { //인자로 들어온 값은 let?
    var answer: Bool = false
    var sum: Int = 0
    var number:Int = x
    print(Int(pow(10,2)))
    for i in stride(from:4,to:-1,by:-1){ //이 부분 헷갈리지 말기!
        sum=sum+number/Int(pow(10,i)) //pow error -> double이 아닌 int로 바꾸게 되면 ambiguous use of pow error 발생
        number=number%Int(pow(10,i)) //pow는 double을 인자로 받고 double을 반환하는데 %는 int형끼리만 연산 가능
    }
    if(x%sum==0){ //조건문에서 != 이거를 쓰면 왜 계속 에러가 나지?
        answer=true
    }
    return answer
}*/


func solution(_ x:Int) -> Bool {
    var answer: Bool = false
    var sum: Int = 0
    var number:Int = x
    while !(number==0) { //왜 != 는 조건문에 사용하지 못하는지,,
        sum+=number%10
        number=number/10
    }
    if(x%sum==0){
        answer=true
    }
    return answer
}
//참조:https://hongdonghyun.github.io/2019/11/Swift-입력받은-숫자의-모든자리-숫자-합/