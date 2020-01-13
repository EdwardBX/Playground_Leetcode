import UIKit

class Solution {
    func longestPalindrome(_ s: String) -> String {
        guard s.count > 0 else {return ""}
        let count = s.count
        var dpResult = [[Bool]](repeating: [Bool](repeating: false, count: count), count: count)
        var maxLength = 0
        var findex = 0
        var sindex = 0
        
        for j in 0 ..< count {
            for i in 0 ..< j {
                dpResult[i][j] = (dpResult[i+1][j-1] || (j - i <= 2)) && s[s.index(s.startIndex, offsetBy: i)] == s[s.index(s.startIndex, offsetBy: j)]
                if j - i + 1 > maxLength && dpResult[i][j] {
                    maxLength = j - i
                    findex = i
                    sindex = j
                }
                
            }
        }
        
        let index1 = s.index(s.startIndex, offsetBy: findex)
        let index2 = s.index(s.startIndex, offsetBy: sindex)
        return String(s[index1 ... index2])
    }
}
