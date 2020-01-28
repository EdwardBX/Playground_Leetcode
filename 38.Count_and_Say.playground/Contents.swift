func countAndSay(_ n: Int) -> String {
    guard n >= 1 && n <= 30 else {
        return "0"
    }
    var result = "1"
    
    for _ in 1 ..< n {
        var count = 1
        var tmp = ""
        let nums = Array(result)
        
        for j in 0 ..< nums.count {
            if j == nums.count - 1 {
                tmp += "\(count)"
                tmp += "\(nums[j])"
            } else {
                if nums[j] == nums[j + 1] {
                    count += 1
                } else {
                    tmp += "\(count)"
                    tmp += "\(nums[j])"
                    count = 1
                }
            }
        }
        result = tmp
    }
    
    return result
}
