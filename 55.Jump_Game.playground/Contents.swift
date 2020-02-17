func canJump(_ nums: [Int]) -> Bool {
    for (index, number) in nums.enumerated() {
        if number == 0 && index < nums.count - 1 {
            var hasReached = false
            for i in 0 ..< index {
                if (nums[i] + i > index) {
                    hasReached = true
                    break
                }
            }
            if !hasReached {
                return false
            }
        }
    }
    return true
}

canJump([1,2,3])
