def solution(phone_number):
    answer = ''
    answer+="*"*(len(phone_number)-4)
    answer+=phone_number[-4:] #슬라이싱 start 값 음수(맨 뒤가 -1)
    return answer