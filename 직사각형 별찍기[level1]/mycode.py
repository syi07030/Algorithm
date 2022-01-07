a, b = map(int, input().strip().split(' '))
for i in range(b):
    print("*"*a)

#다음과 같이 한 줄로도 표현 가능
#answer = ('*'*a +'\n')*b