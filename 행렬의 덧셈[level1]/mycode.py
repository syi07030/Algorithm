def solution(arr1, arr2):
    answer = [[0 for x in range(len(arr1[0]))] for y in range(len(arr1))] #이 과정이 필수적인건 아닌가..?
    for i in range(len(arr1)):
        for j in range(len(arr1[i])):
            answer[i][j]=arr1[i][j] + arr2[i][j]
    return answer

    '''
    def sumMatrix(A,B):
    answer = [[c + d for c, d in zip(a, b)] for a, b in zip(A,B)]
    #이런식으로 2차원 배열의 각 요소를 표현 가능
    return answer
    '''