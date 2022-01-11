def solution(num):
    for i in range(500):
        if num==1:  # 이 부분이 맨 앞으로 나와야 한다!! 처음부터 1인 경우가 있을 수 있으니까
            return i
        if num%2==0:
            num=num/2
        else:
            num=num*3+1
    return -1