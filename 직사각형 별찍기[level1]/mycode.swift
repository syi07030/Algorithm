import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

for i in 0..<b{
    for j in 0..<a{
        print("*",terminator:"")
    }
    print("")
}

// for _ in 0..<b {
//     print(Array(repeating: "*", count: a).joined())
// }