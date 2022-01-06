def solution(s, n):
    answer = ''
    for i in s:
        if i==" ":
            answer+=" "
        else:
            if i.isupper()==True:
                answer+=chr(((ord(i)+n-65)%26+65)) #여기서 65 대신에 ord('A')로 하는게 좀 더 다른 사람이 볼 때 좋을듯
            else:
                answer+=chr(((ord(i)+n-97)%26+97)) #여기도 마찬가지로 97을 ord('a')로
    return answer

    #chr(): int(ascii) to string
    #ord(): string to ascii(int)