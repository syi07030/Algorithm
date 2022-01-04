def solution(arr, divisor):
    answer = []
    for i in arr:
        if i%divisor==0:
            answer.append(i)
    if len(answer)==0:
        answer.append(-1)
    answer.sort()
    return answer
if "__name__"=="__main__":
    arr=list(map(int,input.split()))
    divisor=int(input())
    print(solution(arr,divisor))