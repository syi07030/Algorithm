def solution(num):
    if num%2==0: #파이썬에서 0은 false, 0이 아닐 때는 true, 따라서 num%2값을 boolean처럼 사용할 수도 있다.
        #하지만 !(num%2)를 할 경우에는 syntax error 발생
        return "Even"
    else:
        return "Odd"