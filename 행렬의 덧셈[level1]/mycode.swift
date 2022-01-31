func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer : [[Int]]=Array(repeating: Array(repeating:0,count:arr1[0].count),count:arr1.count)
    //크기 안 정해주고 그냥 빈 행렬만을 설정하면 논리 오류 발생
    print(arr1[0].count)
    for i in stride(from:0,to:arr1.count,by:1){
        for j in stride(from:0,to:arr1[0].count,by:1){
            answer[i][j] = arr1[i][j] + arr2[i][j]
        }
    }
    return answer
}