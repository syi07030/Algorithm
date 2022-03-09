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
    return week[(sum+b)%7-1]
}