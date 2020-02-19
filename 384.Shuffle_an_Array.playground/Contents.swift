class Solution {
    private var originalArray = [Int]()
    
    init(_ nums: [Int]) {
        originalArray = nums
    }
    
    /** Resets the array to its original configuration and return it. */
    func reset() -> [Int] {
        return originalArray
    }
    
    /** Returns a random shuffling of the array. */
    func shuffle() -> [Int] {
        var temp = originalArray
        
        for i in 0 ..< originalArray.count {
            let rand = random()
            
            if rand != i {
                temp.swapAt(i, rand)
            }
        }
        return temp
    }
    
    private func random() -> Int {
        return Int.random(in: 0 ..< originalArray.count)
    }
}
