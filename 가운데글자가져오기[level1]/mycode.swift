import Foundation

func solution(_ s:String) -> String {
    let ll = s.count
    let index = Int(ll/2)
    let ss = String(s[s.index(s.startIndex,offsetBy:index)])
    if ll % 2 == 1 {
        return ss
    }else{
        return String(s[s.index(s.startIndex,offsetBy:index-1)])+ss
    }
}