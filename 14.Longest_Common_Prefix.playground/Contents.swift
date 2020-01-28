func longestCommonPrefix(_ strs: [String]) -> String {
    guard strs.count > 0 else {
        return ""
    }
    
    for i in 0 ..< strs[0].count {
        for j in 1 ..< strs.count {
            let tmp1 = Array(strs[j])
            let tmp2 = Array(strs[0])
            if i >= strs[j].count || tmp1[i] != tmp2[i] {
                return String(strs[0][strs[0].index(strs[0].startIndex, offsetBy: 0) ..< strs[0].index(strs[0].startIndex, offsetBy: i)])
            }
        }
    }
    
    return strs[0]
}

longestCommonPrefix(["lld", "lla", "lll", "la"])
