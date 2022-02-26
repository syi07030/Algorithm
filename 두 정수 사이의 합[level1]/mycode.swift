// 이렇게 하면 작은 수가 음수일 경우 잘못된 값을 리턴
func solution(_ a:Int, _ b:Int) -> Int64 {
    if a == b {
        
        return Int64(a)
        
    }else{
        
        let interval = abs(a-b) + 1
        if a > b {
            
            return Int64((b+1)*interval)
            
        } else {
            
            return Int64((a+1)*interval)
        }
        
    }
    
}


// 이렇게 수정, reduce 사용해도 가능
func solution(_ a:Int, _ b:Int) -> Int64 {
    if a == b {
        
        return Int64(a)
        
    }else{
        let nums = [a,b].sorted()
        var sum = 0
        for i in nums[0]...nums[1]{
            sum+=i
        }
            
        return Int64(sum)
        
    }
    
}