#정렬 사용 - 코드 실행은 통과했으나 채점은 모두 실패,,
def solution(citations):
    answer = 0
    sort_arr = sorted(citations)
    mean = len(citations)//2
    num=sort_arr[mean]
    while(True):
        if len(sort_arr[mean:]) == num:
            answer=num
            break
        elif len(sort_arr[mean:]) < sort_arr[mean]:
            num-=1
        else:
            num+=1
    return answer