def solution(s):
    answer = ""
    word=["zero","one","two","three","four","five","six","seven","eight","nine"]

    for i in range(len(word)):
        if word[i] in s:
            s=s.replace(word[i],str(i))
    answer=int(s)
    return answer

'''
다른 사람 풀이 - 딕셔너리 사용

num_dic = {"zero":"0", "one":"1", "two":"2", "three":"3", "four":"4", "five":"5", "six":"6", "seven":"7", "eight":"8", "nine":"9"}

def solution(s):
    answer = s
    for key, value in num_dic.items():
        answer = answer.replace(key, value)
    return int(answer)
'''