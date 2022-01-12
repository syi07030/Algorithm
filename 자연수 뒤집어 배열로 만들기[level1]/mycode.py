def solution(n):
    reverse_string = str(n)[::-1]
    answer=list(map(int,reverse_string))
    return answer

'''
return list(map(int, reversed(str(n))))
이렇게 한 줄로 표현도 가능하다
reverse 방법: string[::-1] [start,stop,step], reversed(string), for loop 사용

숫자를 각 자리수의 list로 변환
list(map(int,str(n)))
[int(a) for a in str(n)]
'''