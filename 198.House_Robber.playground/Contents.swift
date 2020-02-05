func rob(_ nums: [Int]) -> Int {
    guard nums.count > 0 else {
        return 0
    }
    
    var result = [Int](repeating: 0, count: nums.count)
    
    result[0] = nums[0]
    if nums.count > 1 {
        result[1] = nums[0] > nums[1] ? nums[0] : nums[1]
    }
    
    if nums.count > 2 {
        for i in 2 ..< nums.count {
            result[i] = result[i - 2] + nums[i] > result[i - 1] ? result[i - 2] + nums[i] : result[i - 1]
        }
    }
    
    return result[nums.count - 1]
}

rob([1,2,3,1])
