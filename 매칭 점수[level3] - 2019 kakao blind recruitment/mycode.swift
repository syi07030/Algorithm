import Foundation

func solution(_ word:String, _ pages:[String]) -> Int {
    var answer = [Int](repeating:0,count:pages.count)
    var basic = [Int](repeating:0,count:pages.count)
    for (index,p) in pages.enumerated() {
        let arr = p.lowercased().components(separatedBy:"\n")
        var body = arr[arr.firstIndex(of:"<body>")!+1].components(separatedBy:" ")
        print(body)
        print(body.filter{$0 == word}.count)
    }
    print(basic)
    return Int(answer.firstIndex(of:answer.max()!)!)
}