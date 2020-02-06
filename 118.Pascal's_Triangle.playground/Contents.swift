func generate(_ numRows: Int) -> [[Int]] {
    guard numRows > 1 else {
        if numRows == 0 {
            return []
        }
        return [[1]]
    }
    
    var result = [[Int]]()
    var temp = [1,1]
    result.append([1])
    result.append(temp)
    if numRows == 2 {
        return result
    }
    var current = [Int]()
    for i in 2 ..< numRows {
        current.append(1)
        for j in 0 ..< i - 1 {
            current.append(temp[j] + temp[j + 1])
        }
        current.append(1)
        temp = current
        result.append(current)
        current.removeAll()
    }
    
    return result
}
