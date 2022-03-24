func solution(_ s:String) -> String {
    var arr = s.components(separatedBy:" ")
    for i in stride(from:0,to:arr.count,by:1){
        arr[i] = arr[i].lowercased()
        arr[i] = String(arr[i].first!.uppercased())+String(arr[i].dropFirst(1))
    }
    return arr.joined(separator:" ")
}