import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    var answer = [Int]()
    
    for arr in commands {
        var i = arr[0]
        var j = arr[1]
        var k = arr[2]
        var newarr = [Int]()
        
        for ii in i...j {
            newarr.append(array[ii])
        }
        
        newarr.sort()
        answer.append(newarr[k])
        
    }
    
    return []
}