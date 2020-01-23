var str = "Hello, playground"

func strStr(_ haystack: String, _ needle: String) -> Int {
    guard needle.count > 0 else {
        return 0
    }
    
    guard haystack.count >= needle.count else {
        return -1
    }
    
    let tn = Array(needle)
    let th = Array(haystack)

    for (j, char) in th.enumerated() {
        if tn[0] == char && j + tn.count <= haystack.count {
            let subString = haystack[haystack.index(haystack.startIndex, offsetBy: j) ..< haystack.index(haystack.startIndex, offsetBy: j + tn.count)]
            if String(subString) == needle {
                return j
            }
        }
    }

    return -1
}

strStr("hello", "ll")
