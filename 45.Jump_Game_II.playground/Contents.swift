class Solution {
    func jump(_ nums: [Int]) -> Int {
        var count = 0
        var index = nums.count - 1
        while index > 0 {
            index = helper(0, index, nums: nums)
            count += 1
        }
        return count
    }
    
    func helper(_ start: Int, _ end: Int, nums:[Int]) -> Int {
        if start >= end {
            return start
        }

        for i in start ..< end {
            if nums[i] + i >= end {
                return i
            }
        }
        return start
    }
}
