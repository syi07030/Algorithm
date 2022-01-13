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

#2
