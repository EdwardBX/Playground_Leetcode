import UIKit

func firstUniqChar(_ s: String) -> Int {
    var charDic = [Character : Int]()
    var result = s.count
    
    for index in 0 ..< s.count {
        let char = s[s.index(s.startIndex, offsetBy: index)]
        if let value = charDic[char] {
            charDic[char] = value + s.count
        } else {
            charDic[char] = index
        }
    }

    for key in charDic.keys {
        if let value = charDic[key] {
            if value < s.count && value < result {
                result = value
            }
        }
    }
    
    if result >= s.count {
        return -1
    }
    return result
}

firstUniqChar("loveleetcode")
