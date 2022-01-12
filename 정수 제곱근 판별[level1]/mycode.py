def solution(n):
    if round(n**0.5) != n**0.5: #이렇게 하면 반복문 써서 하나하나 확인 안 해도 된다! 정수가 포인트
        return -1
    else: return (n**0.5+1)**2