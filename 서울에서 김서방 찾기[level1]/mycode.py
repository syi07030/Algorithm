def solution(seoul):
    answer = ''
    n=0
    for i in range(len(seoul)):
        if seoul[i] == "Kim":
            n=i
            break
    answer='김서방은 '+str(n)+'에 있다'
    return answer

    #.find():찾는 문자가 없는 경우에 -1을 출력, 문자열에서만 사용 가능, list,tuple,dictionary 사용 불가능(attributeerror)
    #.index(): 찾는 문자가 없는 경우에 valueerror 에러 발생, 문자열, 리스트, 튜플 자료형에서 사용 가능, 딕셔너리에서는 사용 불가능(attributeerror)