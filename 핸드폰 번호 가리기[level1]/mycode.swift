func solution(_ phone_number:String) -> String {
    let ll: Int = phone_number.count - 4
    var answer: String = ""
    for _ in stride(from:0,to:ll,by:1){
        answer+="*"
    }
    answer+=String(phone_number[phone_number.index(phone_number.endIndex,offsetBy:-4)...])
    return answer
}

//return String("\(String(repeating: "*", count: phone_number.count - 4))\(phone_number.suffix(4))")
//return String(repeating:"*", count:phone_number.count-4)+phone_number.suffix(4)

// guard phone_number.count > 4 else { return phone_number }
//    return String(phone_number.enumerated().map{($0.offset<phone_number.count-4 ? Character("*") : $0.element)})