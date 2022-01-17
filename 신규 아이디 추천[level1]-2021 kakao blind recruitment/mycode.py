def solution(new_id):
    answer = ''
    # special=["~","!","@","#","$","%","^","&","*","(",")","=","+","[","{","]","}",":","?",",","<",">","/"]
    #step1
    answer=new_id.lower()

    import re

    #step2
    answer = re.sub('[^a-z0-9-_.]', '', answer)
    # for i in answer:
    #     if i in special:
    #         answer=answer.replace(i,"")

    #step3
    # answer=answer.split(".")
    # while "" in answer:
    #     answer.remove("")
    # answer=".".join(answer)
    answer = re.sub(r'\.+', ".", answer)

    #step4
    # if len(answer)!=0 and answer[0]==".":
    #     answer=answer.replace(answer[0],"")
    # if len(answer)!=0 and answer[-1]==".":
    #     answer=answer.replace(answer[-1],"")
    answer = answer.strip(".")

    #step5
    if len(answer)==0:
        answer+="a"

    #step6
    if len(answer)>=16:
        answer=answer[:15]
        answer = answer.rstrip(".")
        #이 부분이 잘못되어서 테케 16,20 계속 틀림
        #아래와 같이 작성하면 "." 부분을 다 공백으로 바꿔버린다
        # if answer[-1]==".":
        #     answer=answer.replace(answer[-1],"")

    #step7
    if len(answer)<=2:
        last_char = answer[-1]
        while(len(answer)<3):
            answer += last_char

    return answer


'''
다른사람풀이-정규식 사용

import re

def solution(new_id):
    st = new_id
    st = st.lower()
    st = re.sub('[^a-z0-9\-_.]', '', st)
    st = re.sub('\.+', '.', st)
    st = re.sub('^[.]|[.]$', '', st)
    st = 'a' if len(st) == 0 else st[:15]
    st = re.sub('^[.]|[.]$', '', st)
    st = st if len(st) > 2 else st + "".join([st[-1] for i in range(3-len(st))])
    return st
'''