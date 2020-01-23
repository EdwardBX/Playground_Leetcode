import UIKit

func firstUniqChar(_ s: String) -> Int {
    var map = [Character: Int]()
    for ch in s {
        map[ch] = map[ch, default: 0] + 1
    }
    for (i, ch) in s.enumerated() {
        if map[ch] == 1 {
            return i
        }
    }
    return -1
}

firstUniqChar("loveleetcode")
