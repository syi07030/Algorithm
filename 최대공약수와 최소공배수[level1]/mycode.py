def solution(n, m):
    answer = []
    divisor=1
    for i in range(1,min(n,m)+1):
        if n%i ==0 and m%i==0:
            divisor=i
    answer.append(divisor)
    multiple=1
    for i in range(1,m*n+1):
        if i%n==0 and i%m==0:
            multiple=i
            break
    answer.append(multiple)
    return answer

    '''
    def gcdlcm(a, b):
    c, d = max(a, b), min(a, b)
    t = 1
    while t > 0: #이 부분이 살짝,,
        t = c % d
        c, d = d, t #파이썬은 이게 가능
    answer = [c, int(a*b/c)] #최소공배수*최대공약수=두 수의 곱 이용하면 된다..!

    return answer
    '''