def solution(x):
    answer = True
    str_num=str(x)
    sum=0
    for i in str_num:
        sum+=int(i)
    if x%sum!=0:
        answer=False
    return answer

#문자열로 변경 후 각 자리수 숫자 int형으로 다시 변환하여 sum 계산
#return n % sum([int(c) for c in str(n)]) == 0