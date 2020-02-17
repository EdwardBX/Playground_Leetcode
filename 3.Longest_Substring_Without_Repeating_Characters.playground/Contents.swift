func lengthOfLongestSubstring(_ s: String) -> Int {
    let s = Array(s)
    
    var recent = [Character: Int]()
    var longest = 0
    var result = 0
    
    for index in s.indices {
        longest += 1
        let c = s[index]
        if let prev = recent[c] {
            let back = (index - prev)
            if back < longest {
                longest = back
            }
        }
        recent[c] = index
        if longest > result {
            result = longest
        }
    }
    return result
}

lengthOfLongestSubstring("abcabcbb")
