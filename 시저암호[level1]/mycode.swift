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

/*
다른 사람 풀이 코드

func solution(_ s:String, _ n:Int) -> String {
    return s.utf8.map {
        var code = Int($0)
        switch code {
            case 65...90:
                code = (code + n - 65) % 26 + 65
            case 97...122:
                code = (code + n - 97) % 26 + 97
            default:
                break
        }
        return String(UnicodeScalar(code)!)
    }.joined()
}


func solution(_ s:String, _ n:Int) -> String {
    let alphabets = "abcdefghijklmnopqrstuvwxyz".map { $0 }
    return String(s.map {
        guard let index = alphabets.firstIndex(of: Character($0.lowercased())) else { return $0 }
        let letter = alphabets[(index + n) % alphabets.count]
        return $0.isUppercase ? Character(letter.uppercased()) : letter
    })
}

*/