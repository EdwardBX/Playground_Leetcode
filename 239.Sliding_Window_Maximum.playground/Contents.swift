func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
    var result = [Int](repeating: 0, count: nums.count - k + 1)
    
    var index = [Int]()
    
    for i in 0 ..< nums.count {
        let startIdx = i - k + 1
        // 构建单调队列
        if index.count != 0 && startIdx > index.first! {
            index.removeFirst()
        }
        
        while index.count != 0 && nums[i] >= nums[index.last!] {
            index.removeLast()
        }
        
        index.append(i)
        
        if startIdx >= 0 {
            let cur = nums[index.first!]
            result.append(cur)
        }
    }
    
    return result
}
