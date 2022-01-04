def solution(s):
    answer = ''
    ll = len(s)
    if ll%2 == 1:
        answer = s[(ll//2)]
    else:
        answer = s[(ll//2)-1:(ll//2)+1]
    return answer