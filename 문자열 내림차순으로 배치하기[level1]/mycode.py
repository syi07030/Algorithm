def solution(s):
    answer=''
    if len(s)==1: #이 부분은 굳이 안 해도 된다
        answer= s
    else:
        answer=''.join(sorted(s,reverse=True)) #대문자까지 한번에 내림차순으로 정렬
    return answer