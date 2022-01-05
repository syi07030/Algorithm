def solution(s):
    answer = 0
    if s[0]=="-":
        answer=int(s[1:])*-1
    else:
        answer=int(s)
    return answer

'''
다른 사람 풀이

def strToInt(str):
    result = 0

    for idx, number in enumerate(str[::-1]):
        if number == '-':
            result *= -1
        else:
            result += int(number) * (10 ** idx)

    return result
'''