import Foundation

func solution(_ w:Int, _ h:Int) -> Int64{
    var answer:Int64 = 0
    let total:Int64 = Int64(w*h)
    let min = [w,h].min()!
    let max = [w,h].max()!
    if w == h {
        answer = total - Int64(w)
    } else if (w%2 == 0) && (h%2 == 0) {
        let cross = min
        answer = total - Int64(2*cross)
    } else if (w%2 == 0) || (h%2 == 0){
        let cross = max+1
        answer = total - Int64(2*cross)
    } else {
        let cross = Int(floor(Double(max)/Double(2))) + 1
        answer = total - Int64(2*cross+1)
    }

    return answer
}