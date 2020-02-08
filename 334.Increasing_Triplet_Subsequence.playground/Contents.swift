func increasingTriplet(_ nums: [Int]) -> Bool {
    var small = Int.max
    var big = Int.max
    
    for num in nums {
        if num <= small {
            small = num
        }
        else if num <= big {
            big = num
        }
        else if num > big {
            return true
        }
    }
    return false
}
