import UIKit

class Solution {
    func longestPalindrome(_ s: String) -> String {
        guard s.count > 1 else {return s}
        let count = s.count
        var dpResult = [[Bool]](repeating: [Bool](repeating: false, count: count), count: count)
        var maxLength = 1
        var findex = 0
        
        let ts = Array(s)
        
        for i in 0 ..< count {
            dpResult[i][i] = true
        }
        
        for i in (0 ..< count).reversed() {
            for dist in 1 ..< count - i {
                let j = dist + i
                let subi = ts[i]
                let subj = ts[j]
                dpResult[i][j] = (dist == 1) ? (subi == subj) : (subi == subj) && dpResult[i + 1][j - 1]
                if dist + 1 > maxLength && dpResult[i][j] {
                    maxLength = j - i + 1
                    findex = i
                }
            }
        }
        
        let index1 = s.index(s.startIndex, offsetBy: findex)
        let index2 = s.index(index1, offsetBy: maxLength - 1)
        return String(s[index1 ... index2])
    }
}
