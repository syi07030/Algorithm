def solution(arr):
    arr.remove(min(arr)) #배열 요소 삭제 remove,del
    if len(arr)==0:
        arr.append(-1)
    return arr