#HASH

def solution(genres, plays):
    answer = []
    genre = list(set(genres))
    music = [0]*len(genre)
    
    for i in range(len(genres)):
        index = genre.index(genres[i])
        music[index] = [plays[i]]
    print(music)
    return answer