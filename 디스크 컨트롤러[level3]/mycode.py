import math

def solution(jobs):
    answer = []
    n = len(jobs)
    jobs.sort(key=lambda x:(x[0],x[1])) #jobs 정렬
    #print(jobs)
    current = jobs[0][0] #앞의 task가 끝난 시점, 처음에는 시작 시점으로 초기화
    while len(jobs)>0:
        if jobs[0][0] <= current:
            current,task,jobs = duringTask(current,jobs)
            answer.append(task)
            #print("1",answer,jobs)
        else:
            current = jobs[0][0]
    return math.trunc(sum(answer)/n)

def duringTask(current, jobs):
    task = []
    rest = []
    time = current
    for index,j in enumerate(jobs):
        if j[0]<=current:
            task.append(j)
        else:
            rest = jobs[index:]
            break
    task.sort(key=lambda x:x[1])
    result=time+task[0][1]-task[0][0]
    time += task[0][1]
    new_jobs = task[1:] + rest

    return  time, result, new_jobs


#다른 사람들 풀이 보면 heapq 모듈 사용 