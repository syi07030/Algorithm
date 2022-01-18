def diff_loc(target,right,left):
    if target-1:
        
    return right,left

def solution(numbers, hand):
    answer = ''
    finger=[0,"L",0,"R","L",0,"R","L",0,"R"]
    #finger={1:"L",4:"L",7:"L",3:"R",6:"R",9:"R"}
    right,left=12,10 #현재 위치
    
    for n in numbers:
        if finger[n]==0:
            if n-right == n-left:
                answer+= hand[0].upper()
            elif n-right > n-left:
                answer+="R"
            else:
                answer+="L"
        else:
            answer+=finger[n]
    return answer