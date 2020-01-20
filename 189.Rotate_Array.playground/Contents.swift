import UIKit
class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let vk = k % nums.count
        
        reverse(&nums, start: 0, end: nums.count - 1)
        reverse(&nums, start: 0, end: vk - 1)
        reverse(&nums, start: vk, end: nums.count - 1)
    }
    
    func reverse(_ nums: inout [Int], start : Int, end: Int) {
        var s = start
        var e = end
        while s < e {
            let tmp = nums[s]
            nums[s] = nums[e]
            nums[e] = tmp
            
            s += 1
            e -= 1
        }
    }
}


var slt = Solution()
var array = [1,2,3,4,5]
slt.rotate(&array, 2)
array
