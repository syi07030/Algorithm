def solution(x, n):
    answer = []
    for i in range(n):
        answer.append(x*(i+1)) #list answer에 그냥 +할 경우에 TypeError: 'int' object is not iterable 발생
    return answer