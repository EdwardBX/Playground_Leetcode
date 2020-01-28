class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
        var hashmap = [Int : Int]()
        
        for i in 0 ..< nums.count {
            let find = target - nums[i]
            if let value = hashmap[find] {
                result.append(i)
                result.append(value)
                return result
            } else {
                hashmap[nums[i]] = i
            }
        }
        return result
    }
}


