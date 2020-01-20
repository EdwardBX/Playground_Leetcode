import UIKit

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        let count = nums.count
        var max = nums[0]
        var result = [Int](repeating: 0, count: count)
        result[0] = nums[0]
        
        for i in 1 ..< count {
            result[i] = result[i - 1] > 0 ? result[i - 1] + nums[i] : nums[i]
            if result[i] > max {
                max = result[i]
            }
        }
        return max
    }
}
