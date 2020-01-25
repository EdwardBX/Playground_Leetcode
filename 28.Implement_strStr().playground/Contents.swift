func strStr(_ haystack: String, _ needle: String) -> Int {
    guard needle.count > 0 else {
        return 0
    }
    
    guard haystack.count >= needle.count else {
        return -1
    }
    
    let tn = Array(needle)
    let th = Array(haystack)
    
    for j in 0 ... th.count - tn.count {
        if tn[0] == th[j] && j + tn.count <= haystack.count {
            let subString = th[j ..< j + tn.count]
            if String(subString) == needle {
                return j
            }
        }
    }
    
    return -1
}

strStr("hello", "ll")
