import UIKit

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 1 else {
            return nums.count
        }
        var lengthVar: Int = 1
        for i in 1 ..< nums.count {
            if (nums[i] != nums[i-1]) {
                // 去重
                nums[lengthVar] = nums[i]
                lengthVar += 1
            }
        }
        return lengthVar
    }
}
