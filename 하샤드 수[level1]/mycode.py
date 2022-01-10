#풀이 확인 필요[서버 연결 문제로 채점 불가능]
def solution(x):
    answer = True
    str_num=str(x)
    sum=0
    l=len(str_num)
    for i in range(l):
        sum+=str_num[i]*(10**(l-i-1))
    if x%sum!=0:
        answer=False
    return answer