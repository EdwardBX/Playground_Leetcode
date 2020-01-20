func moveZeroes(_ nums: inout [Int]) {
    for i in 0 ..< nums.count {
        for j in i ..< nums.count {
            if nums[i] == 0 {
                let tmp = nums[j]
                nums[j] = nums[i]
                nums[i] = tmp
            }
        }
    }
}

func moveZeroes1(_ nums: inout [Int]) {
    var tmp = [Int]()
    
    for i in nums {
        if i != 0 {
            tmp.append(i)
        }
    }
    
    var zeroCount = 0
    for i in nums {
        if i == 0 {
            zeroCount += 1
        }
    }
    
    for _ in 0 ..< zeroCount {
        tmp.append(0)
    }
    
    nums = tmp
}

var array = [0,1,0,3,12]
moveZeroes1(&array)
