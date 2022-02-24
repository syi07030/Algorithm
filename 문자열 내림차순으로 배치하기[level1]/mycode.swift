func solution(_ s:String) -> String {
    let arr = Array(s).sorted(by:>) //sort와 sorted의 차이점
    return String(arr) //character array -> string

}