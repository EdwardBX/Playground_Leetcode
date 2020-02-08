func groupAnagrams(_ strs: [String]) -> [[String]] {
    guard strs.count > 0 else {
        return []
    }
    var strDic = [String: [Int]]()
    for i in 0 ..< strs.count {
        let tmpStrArray = Array(strs[i])
        let sorted = tmpStrArray.sorted {$0 < $1}
        // 如果前面有相同的字符串
        if let tmpIndex = strDic[String(sorted)] {
            var indexArray = tmpIndex
            // 标记在 strs 中的序号
            indexArray.append(i)
            // 以全部相同字符串的序号的集合做哈希
            strDic[String(sorted)] = indexArray
        } else {
            let indexArray = [i]
            strDic[String(sorted)] = indexArray
        }
    }
    var resultArray:[[String]] = []
    for (_, value) in strDic {
        var tmpArray: [String] = []
        for indexNum in value {
            tmpArray.append(strs[indexNum])
        }
        resultArray.append(tmpArray)
    }
    return resultArray
}

groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"])
