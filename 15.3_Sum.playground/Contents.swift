func threeSum(_ nums: [Int]) -> [[Int]] {
    /// 1. sort 2. two pointer
    guard nums.count > 2 else {
        return []
    }
    
    var temp = nums.sorted()
    var result = [[Int]]()
    
    for i in 0 ..< nums.count - 2 {
        if i == 0 || (i > 0 && temp[i] != temp[i - 1]) {
            var start = i + 1
            var end = nums.count - 1
            let target = 0 - temp[i]
            
            while start < end {
                if temp[start] + temp[end] == target {
                    result.append([temp[i], temp[start], temp[end]])
                    while start < end && temp[start] == temp[start + 1] {
                        start += 1
                    }
                    while start < end && temp[end] == temp[end - 1] {
                        end -= 1
                    }
                    start += 1
                    end -= 1
                } else if temp[start] + temp[end] < target {
                    start += 1
                } else {
                    end -= 1
                }
            }
        }
    }
    return result
}

threeSum([-1, 0, 1, 2, -1, -4])
