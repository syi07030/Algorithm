import Foundation
func solution(_ n:Int64) -> Int64 {
    var arr: [Int64] = []
    var x: Int64 = n
    var answer: Int64 = 0
    while x>0{
        arr+=[x%10]
        x /= 10
    }
    let arr2 = arr.sorted(by:>)
    let ll = arr2.count
    var j: Int = 0
    var p: Decimal = 0
    for i in arr2{
        p = pow(10,ll-j-1) //pow 사용 주의 pow는 리턴값 타입이 decimal
        var result = NSDecimalNumber(decimal: p)
        answer += i*Int64(result)
        j+=1
    }
    return answer
}

/*
다른 사용자 풀이

func solution(_ n:Int64) -> Int64 {
    return Int64(String(String(n).sorted{ $0 > $1 }))!
}
*/