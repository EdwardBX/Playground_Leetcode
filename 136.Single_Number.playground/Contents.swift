func singleNumber(_ nums: [Int]) -> Int {
    var a = 0
    for i in nums {
        a ^= i
    }
    return a
}
