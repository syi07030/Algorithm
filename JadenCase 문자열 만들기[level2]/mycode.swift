// 뭔가 좀 노가다 느낌이,,
func solution(_ s:String) -> String {
    var arr = Array(s.lowercased())
    var answer = [String(arr[0].uppercased())]
    print(answer)
    for i in stride(from:1,to:arr.count,by:1){
        if arr[i-1] == " "{
            answer += [String(arr[i].uppercased())]
        }else{
            answer+=[String(arr[i])]
        }
    }
    return answer.joined(separator:"")

    /*
    var arr = s.lowercased().components(separatedBy:" ")
    for i in stride(from:0,to:arr.count,by:1){
        arr[i] = String(arr[i].first!.uppercased())+String(arr[i].dropFirst(1))
    }
    return arr.joined(separator:" ")*/
}