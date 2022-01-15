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

#3 - 성공! 근데 좀 더 괜찮은 방법이 있을텐데,,
def solution(n, lost, reserve):
    answer = 0
    lost_reserve=[]
    ll=len(lost)
    lost=sorted(lost)
    reserve=sorted(reserve)
    #lost_set=set(lost)
    #reserve_set=set(reserve)
    #inter_lost_reserve = list(lost_set & reserve_set)
    #if len(inter_lost_reserve)!=0:    
    for i in lost:
        if i in reserve:
            lost_reserve.append(i)
            reserve.remove(i)
    new_lost=[x for x in lost if x not in lost_reserve]
    #print(lost)
    #print(reserve)
    #print(lost_reserve)
    for i in new_lost:
        if i-1 in reserve:
            lost_reserve.append(i)
            reserve.remove(i-1)
        elif i+1 in reserve:
            lost_reserve.append(i)
            reserve.remove(i+1)
    #print(lost)
    #print(reserve)
    #print(lost_reserve)
    answer = n-(ll-len(lost_reserve))
    return answer

'''
[다른 사람 풀이]

def solution(n, lost, reserve):
    _reserve = [r for r in reserve if r not in lost]
    _lost = [l for l in lost if l not in reserve]
    for r in _reserve:
        f = r - 1
        b = r + 1
        if f in _lost:
            _lost.remove(f)
        elif b in _lost:
            _lost.remove(b)
    return n - len(_lost)
'''