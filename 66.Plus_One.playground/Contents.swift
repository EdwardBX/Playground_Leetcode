func plusOne(_ digits: [Int]) -> [Int] {
    var result = digits
    for i in (0 ..< digits.count).reversed() {
        if result[i] < 9 {
            result[i] += 1
            return result
        }
        result[i] = 0
    }
    
    var more = [Int](repeating: 0, count: digits.count + 1)
    more[0] = 1
    return more
}
