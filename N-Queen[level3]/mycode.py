def solution(n):
    answer = 0
    arr = [] #열 기준
    row = 0
    for i in range(n): #열 기준
        arr.append(i)
        
    
    return answer

def dfs(i,n,arr): #i-몇 번째 행, n-어떤 열에 놓을지
    if len(arr) == 0 :
        dfs()
        
def check(y, arr): #퀸을 놓아도 되는지 여부 반환
    if y in arr: #같은 행에 없도록
        return False
    for i in len(arr):
        if abs(len(arr)-i) == abs(y-arr[i]):
            return False
    return True