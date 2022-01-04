def solution(a, b):
    week=["FRI","SAT","SUN","MON","TUE","WED","THU"]
    month=[31,29,31,30,31,30,31,31,30,31,30,31]
    answer=week[(sum(month[:a-1])+b)%7-1]
    return answer