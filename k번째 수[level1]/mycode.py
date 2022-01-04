def solution(aa, commands):
    answer = []
    for a,b,c in commands:
        tmp=aa[a-1:b]
        tmp.sort()
        print(tmp)
        answer.append(tmp[c-1])
    return answer

if __name__=='__main__':
    print(solution([1,5,2,6,3,7,4],[[2,5,3],[4,4,1],[1,7,3]]))