func missingNumber(_ nums: [Int]) -> Int {
    var sum = 0
    for i in 1 ... nums.count {
        sum += i
    }
    for num in nums {
        sum -= num
    }
    return sum
}
