import UIKit

var str = "acgabcdd"
var str_1 = "cgabcd"

func longestSubstring(str1: String, str2: String) -> Int {
    let length1 = str1.count
    let length2 = str2.count
    
    var cookies = [[Int]](repeating: [Int](repeating: 0, count: length2 + 1), count: length1 + 1)
    
    var maxLenth = 0
    for i in 1 ..< length1 + 1 {
        for j in 1 ..< length2 + 1 {
            if str1[str1.index(str1.startIndex, offsetBy: i - 1)] == str2[str2.index(str2.startIndex, offsetBy: j - 1)] {
                cookies[i][j] = cookies[i-1][j-1] + 1;
                if(cookies[i][j] > maxLenth) {
                    maxLenth = cookies[i][j]
                }
            } else {
                cookies[i][j] = 0
            }
        }
    }
    return maxLenth
}

longestSubstring(str1: str, str2: str_1)
