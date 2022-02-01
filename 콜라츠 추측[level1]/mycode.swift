func solution(_ num:Int) -> Int {
    var answer:Int = num
    var count:Int = 0
    while(count<500){
        if(answer == 1){return count}
        else if(answer%2==0){
        answer=answer/2
        }
        else{
            answer=answer*3+1
        }
        count+=1
    }
    print(count)
    return -1
}