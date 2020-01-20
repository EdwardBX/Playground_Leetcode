import UIKit

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var numsMap = [Int: Bool]()
        
        for i in 0 ..< nums.count {
            if let value = numsMap[nums[i]] {
                if value {
                    return true
                }
            } else {
                numsMap[nums[i]] = true
            }
        }
        return false
    }
}

var slt = Solution()
slt.containsDuplicate([1,3,4,2])

