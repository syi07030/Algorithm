def solution(strings, n):
    re_sort=[]
    answer = []
    for word in strings:
        re_sort.append(word[n]+word[:n]+word[n+1:])
    re_sort.sort()
    for word in re_sort:
         answer.append(word[1:n+1]+word[0]+word[n+1:])
    return answer

'''
return sorted(sorted(strings), key=lambda x: x[n])
이렇게 간단하게 할 수 있는데,,

data_list.sort(key=lambda x:len(x))
sorted(e,key=lambda x: (x[0],-x[1])) -> 첫 번째 인자 기준으로 오름차순 먼저 정렬, 두 번쨰 인자 기준으로 내림차순 정렬
'''