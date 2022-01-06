def solution(n):
    answer = 0
    divisor =[]
    for i in range(1,round(n**0.5)+1): #math module을 사용하지 못할 경우 이런식으로 루트 표현 가능
        if n%i == 0:
            divisor.append(i)
            if (n/i) not in divisor: #중복 제거를 set이 아닌 이와 같이 할 수 있다.
                divisor.append(n/i)
    answer = sum(divisor)
    return answer

#return num + sum([i for i in range(1, (num // 2) + 1) if num % i == 0])
#이런식으로 한 줄로도 표현 가능