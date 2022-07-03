#시간 초과
def solution(gems):
    answer = []
    sort = sorted(list(set(gems)))
    print(sort)
    sort_num = len(sort)
    
    while len(answer)==0:
        for i in range(len(gems)-sort_num):
            buy = gems[i:i+sort_num]
            print(buy)
            if sort == sorted(list(set(buy))):
                answer = [i,i+sort_num]
                break
        sort_num+=1
    
    return answer