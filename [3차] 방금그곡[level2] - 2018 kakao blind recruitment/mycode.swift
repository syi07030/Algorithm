func solution(_ m:String, _ musicinfos:[String]) -> String {
    var answer = [String]()
    for i in musicinfos{
        let musicLength = i[3].count //음악 길이
        let radioLength = 0 //재생된 시간
        let realmusic = i[3] //실제 재생된 음악 악보
        if musicLength >= radioLength{
            realmusic = realmusic[..<realmusic.index(realmusic.startIndex,offsetBy:radioLength)]
        }else{
            realmusic.append(realmusic[..<realmusic.index(realmusic.startIndex,offsetBy:radioLength-musicLength)])
        }
        if realmusic.contains(m){
            answer.append(i[3])
        }

    }
    return "(None)"
}