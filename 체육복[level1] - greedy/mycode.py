#1 - 시간 초과, Greedy 알고리즘인가?
def solution(n, lost, reserve):
    answer = 0
    for i in lost:
        if i in reserve:
            lost.remove(i)
            reserve.remove(i)
    for j in reserve:
        if j-1 not in reserve: reserve.append(j-1)
        if j+1 not in reserve: reserve.append(j-1)
    for i in lost:
        if i in reserve:
            lost.remove(i)
    answer = n-len(lost)
    return answer

#2 - 3문제 실패, lost에 있는 거랑 reserve에 있는거랑 만약 같은 값이 뒤쪽에 있으면 그 값은 원래 자기거만 사용가능한데 오류,,
def solution(n, lost, reserve):
    answer = 0
    lost_reserve=[]
    for i in lost:
        if i in reserve:
            lost_reserve.append(i)
            reserve.remove(i)
        elif i-1 in reserve:
            lost_reserve.append(i)
            reserve.remove(i-1)
        elif i+1 in reserve:
            lost_reserve.append(i)
            reserve.remove(i+1)
    answer = n-(len(lost)-len(lost_reserve))
    return answer

#3