import math

def solution(jobs):
    answer = []
    n = len(jobs)
    jobs.sort(key=lambda x:(x[0],x[1])) #jobs 정렬
    #print(jobs)
    current = jobs[0][0] #앞의 task가 끝난 시점, 처음에는 시작 시점으로 초기화
    while len(jobs)>0:
        if current <= jobs[0][0]:
            current,same,jobs = sameStart(current,jobs)
            answer.append(same)
            print("1",answer,jobs)
        else:
            current,tasks,jobs = duringTask(current,jobs)
            print("2",current,tasks,jobs)
            answer += tasks
            print("3",answer,jobs)
    print(sum(answer))
    return math.trunc(sum(answer)/n)

def sameStart(current,jobs):
    same = []
    rest = []
    time = 0
    for index,j in enumerate(jobs):
        if j[0] == current:
            same.append(j)
        else:
            rest = jobs[index:]
            break
    result = same[0][1]
    rest = same[1:]+rest
    time = current+result
    return time,result,rest

def duringTask(current, jobs):
    task = []
    rest = []
    for index,j in enumerate(jobs):
        if j[0]<current:
            task.append(j)
            task.sort(key=lambda x:x[1])
        else:
            rest.append(j)
            break
    time = current
    result=[time+task[0][1]-task[0][0]]
    time += task[0][1]
    
    restSort = task[1:] + rest
    
    return  time, result, restSort