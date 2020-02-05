class MinStack {
    private var originalArray = [Int]()
    private var minValue = 0
    /** initialize your data structure here. */
    init() {
        originalArray = [Int]()
    }
    
    func push(_ x: Int) {
        if originalArray.count > 0 {
            originalArray.append(x - minValue)
            if x < minValue {
                minValue = x
            }
        } else {
            originalArray.append(0)
            minValue = x
        }
    }
    
    func pop() {
        if originalArray.count > 0 {
            let pop = originalArray.removeLast()
            
            if pop < 0 {
                minValue -= pop
            }
        }
    }
    
    func top() -> Int {
        if let top = originalArray.last {
            if top > 0 {
                return top + minValue
            } else {
                return minValue
            }
        } else {
            return 0
        }
    }
    
    func getMin() -> Int {
        return minValue
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(x)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */
