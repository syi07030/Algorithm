func solution(_ s:String, _ n:Int) -> String {
    var answer: String = ""
    for char in s{
        if char == " " {
            answer+=" "
        }else{
            let ascii = Int(char.asciiValue!)
            var i = 0
            if ascii <= 90{
                i = 65
            }else if ascii <= 122{
                i = 97
            }
            let unicode = (ascii+n-i)%26+i
            let us = UnicodeScalar(unicode)!
            answer += String(us)
            //answer += String(unicodeCodepoint: unicode)
        }
    }
    return answer
}