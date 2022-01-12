def solution(s):
    answer=''
    n=0 #n의 역할을 enumerate()-몇 번째 반복문인지도 정보를 포함하여 튜플 형태로 반환 
        #이용해서도 할 수 있을듯?!
    for i in s:
        if i==" ": 
            answer+=" "
            n=0
        elif n%2==1:
            answer+=i.lower()
            n+=1
        else:
            answer+=i.upper()
            n+=1
    return answer