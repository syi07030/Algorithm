func solution(_ a:Int, _ b:Int) -> String {
    let week = ["FRI","SAT","SUN","MON","TUE","WED","THU"]
    let month = [31,29,31,30,31,30,31,31,30,31,30,31]
    var sum = 0
    for i in 0...11 {
        if i>=a-1{
            break
        }
        sum += month[i]
    }
    return week[(sum+b-1)%7] //sum+b가 7일 경우에는 FRI가 나와야하는데 -1을 뒤로 빼버리면 week[-1]이 되어버려서 THU가 된다.
}