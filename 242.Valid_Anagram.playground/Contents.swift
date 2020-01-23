var str = "Hello, playground"

func isAnagram(_ s: String, _ t: String) -> Bool {
    var map = [Character: Int]()
    
    for c in s {
        map[c] = map[c, default: 0] + 1
    }
    
    for ch in t {
        map[ch] = map[ch, default: 0] - 1
    }
    
    for i in map.keys {
        if let value = map[i] {
            if value != 0 {
                return false
            }
        }
    }
    return true
}
