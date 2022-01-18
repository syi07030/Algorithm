#1-runtime error,,그리고 함수 두 개로 나눠서 푸는 게 이 문제의 의도가 맞나,,
def pibo(n):
    if n==0: return 0
    elif n==1: return 1
    else: return pibo(n-1)+pibo(n-2)

def solution(n):
    return pibo(n)%1234567

#2
