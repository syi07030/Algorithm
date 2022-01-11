def solution(n):
    answer = 0
    str_num = str(n)
    new_num = ''.join(sorted(str_num,reverse=True)) #주의!!
    answer=int(new_num)
    return answer

    '''
    def solution(n):
        ls = list(str(n))
        ls.sort(reverse = True)
    return int("".join(ls))
    '''