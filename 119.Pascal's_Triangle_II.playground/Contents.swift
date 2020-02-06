func getRow(_ rowIndex: Int) -> [Int] {
    guard rowIndex > 1 else {
        if rowIndex == 0 {
            return [1]
        }
        return [1,1]
    }
    
    var temp = [1,1]
    
    var current = [Int]()
    for i in 2 ..< rowIndex + 1 {
        current.append(1)
        for j in 0 ..< i - 1 {
            current.append(temp[j] + temp[j + 1])
        }
        current.append(1)
        temp = current
        current.removeAll()
    }
    
    return temp
}
