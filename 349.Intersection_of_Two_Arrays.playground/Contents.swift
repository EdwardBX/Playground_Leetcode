func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var result = [Int]()
    
    var numberMap = [Int:Int]()
    
    for i in nums1 {
        numberMap[i] = 1
    }
    
    for j in nums2 {
        if let _ = numberMap[j] {
            numberMap[j] = 2
        }
    }
    
    for key in numberMap.keys {
        if let value = numberMap[key] {
            if value == 2 {
                result.append(key)
            }
        }
    }
    
    return result
}

intersection([1,2,3,4], [2,2,3,3])
