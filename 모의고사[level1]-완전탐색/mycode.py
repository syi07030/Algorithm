def solution(answers):
    answer=[]
    l=len(answers)
    a_total, b_total, c_total=0,0,0
    a=[1,2,3,4,5]
    b=[2,1,2,3,2,4,2,5]
    c=[3,3,1,1,2,2,4,4,5,5]

    a_answer=a*(l//5)+a[:l%5]
    b_answer=b*(l//8)+b[:l%8]
    c_answer=c*(l//10)+c[:l%10]

    for i in range(l):
        if a_answer[i] == answers[i]: a_total+=1
        if b_answer[i] == answers[i]: b_total+=1
        if c_answer[i] == answers[i]: c_total+=1
    print(a_total,b_total,c_total)

    sub=list(set([a_total,b_total,c_total]))
    maximum=max(sub)

    if a_total==maximum: answer.append(1)
    if b_total==maximum: answer.append(2)
    if c_total==maximum: answer.append(3)
    return answer

    '''
    좀 더 깔끔한 풀이법
    
    def solution(answers):
    pattern1 = [1,2,3,4,5]
    pattern2 = [2,1,2,3,2,4,2,5]
    pattern3 = [3,3,1,1,2,2,4,4,5,5]
    score = [0, 0, 0]
    result = []

    for idx, answer in enumerate(answers):
        if answer == pattern1[idx%len(pattern1)]:
            score[0] += 1
        if answer == pattern2[idx%len(pattern2)]:
            score[1] += 1
        if answer == pattern3[idx%len(pattern3)]:
            score[2] += 1

    for idx, s in enumerate(score):
        if s == max(score):
            result.append(idx+1)

    return result
    '''